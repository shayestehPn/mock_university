import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import '../../data/dto/general/error_dto.dart';
import '../error_handling/app_exception.dart';

Future<T> generalNetworkResult<T>(T Function(dynamic data) jsonConverter,
    Future<Response<dynamic>> Function() request) async {
  Response<dynamic>? response;

  ///check internet
  if (await Connectivity().checkConnectivity() == ConnectivityResult.none) {
    throw NoInternetException();
  } else {
    await request().then((value) {
      response = value;
    }, onError: (obj, stackTree) {
      Logger().e(obj);
      switch (obj.runtimeType) {
        case DioError:
        //TODO check the status when obj isn't instance of DioError
          response = (obj as DioError).response;
          break;
        default:
          throw UndefinedException(obj.toString());
      }
    });

    ///generate response
    if (response != null) {
      var serverResponse = response!;
      switch (serverResponse.statusCode!) {
        case 200:
          try {
            T result = jsonConverter(serverResponse.data);
            return result;
          } catch (e) {
            Logger().e(
                "json convert error : ${serverResponse.realUri} \n ${serverResponse.data} ",
                error: e);
            throw JsonConvertException();
          }
      //user see this error
        case 400:
          String errors = "";
          ErrorDto.fromJson(serverResponse.data).errors?.forEach((element) {
            errors += element;
          });
          throw BadRequestException(errors);
      //Redirect to login page
        case 401:
          throw UnauthorisedException();
        case 403:
          throw ForbiddenException(
              ErrorDto.fromJson(serverResponse.data).errors.toString());
        case 404:
          throw NotFoundException();
        case 500:
          throw InternalServerErrorException();
        case 503:
          throw InternalServerErrorException();
        default:
          throw UndefinedException();
      }
    } else {
      throw UndefinedException();
    }
  }
}
