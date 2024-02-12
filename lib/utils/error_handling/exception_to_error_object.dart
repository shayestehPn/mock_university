import 'app_exception.dart';
import 'error_object.dart';

ErrorEntity exceptionToErrorObject(Exception exception) {
  switch (exception.runtimeType) {
    case BadRequestException:
      return ErrorEntity(
          title: "خطای درخواست",
          description: exception.toString(), //to string, returns its message
          solution: "لطفا مجددا تلاش کنید.",
          exception: exception);

    case UnauthorisedException:
      return ErrorEntity(
          title: "توکن منقضی شده",
          description: "حضور در برنامه نیاز به تمدید دارد",
          solution: "لطفا دوباره وارد حساب کاربری خود شوید",
          exception: exception);

    case ForbiddenException:
      return ErrorEntity(
          title: "خطا",
          description: exception.toString(),
          solution: "کمی بعد مجددا تلاش کنید.",
          exception: exception);

    case NotFoundException:
      return ErrorEntity(
          title: "خطای درخواست",
          description: exception.toString(),
          solution: "کمی بعد مجددا تلاش کنید",
          exception: exception);
    case InternalServerErrorException:
      return ErrorEntity(
          title: "خطای سرور",
          description: "سیستم با مشکل مواجه شده است.",
          solution: "لطفا بعد از چند دقیقه دوباره تلاش کنید",
          exception: exception);
    case JsonConvertException:
      return ErrorEntity(
          title: "خطا",
          description: "مشکلی در پردازش اطلاعات پیش آمده است",
          solution: "کمی بعد مجددا تلاش کنید. ",
          exception: exception);
    case UndefinedException:
      return ErrorEntity(
          title: "خطا",
          description: "مشکل نامشخصی به وجود آمده.",
          solution: "لطفا بعد از چند دقیقه دوباره تلاش کنید",
          exception: exception);
    case NoInternetException:
      return ErrorEntity(
          title: "خطای اتصال",
          description: "متاسفانه مشکلی در دریافت اطلاعات پیش آمده",
          solution: "لطفا اتصال اینترنتی خود را بررسی کنید و دوباره تلاش کنید ",
          exception: exception);
    default:
      return const ErrorEntity(
        title: "خطا",
        description: "مشکل نامشخصی به وجود آمده.",
        solution: "لطفا بعد از چند دقیقه دوباره تلاش کنید",
      );
  }
}
