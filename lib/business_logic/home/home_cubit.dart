import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:mock_university/data/repository/home/home_repository.dart';

import '../../utils/enums/api_request_status.dart';
import '../../utils/error_handling/exception_to_error_object.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit()
      :_homeRepository = Get.find<HomeRepository>(),
        super( const HomeState(getHomeDataStatus: ApiRequestStatus.initial));

  final HomeRepository _homeRepository;

  void getDataForHome() async {
    emit(state.copyWith(getHomeDataStatus: ApiRequestStatus.loading));
    try {
      var response = await _homeRepository.getHome();

      emit(state.copyWith(
          getHomeDataStatus: ApiRequestStatus.success, homeData: response));
    } on Exception catch (e) {
      emit(state.copyWith(
          getHomeDataStatus: ApiRequestStatus.failure,
          errorObject: exceptionToErrorObject(e)));
    }
  }
}
