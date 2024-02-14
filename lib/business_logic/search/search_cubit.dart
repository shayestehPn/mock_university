import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:mock_university/business_logic/search/search_state.dart';
import 'package:mock_university/data/repository/home/home_repository.dart';

import '../../utils/enums/api_request_status.dart';
import '../../utils/error_handling/exception_to_error_object.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit()
      : _homeRepository = Get.find<HomeRepository>(),
        super(SearchState(getCoursesListStatus: ApiRequestStatus.initial));

  final HomeRepository _homeRepository;

  void getAllCoursesList() async {
    emit(state.copyWith(getCoursesListStatus: ApiRequestStatus.loading));
    try {
      var response = await _homeRepository.getAllCoursesList();

      emit(state.copyWith(
          getCoursesListStatus: ApiRequestStatus.success,
          searchData: response));
    } on Exception catch (e) {
      emit(state.copyWith(
          getCoursesListStatus: ApiRequestStatus.failure,
          errorObject: exceptionToErrorObject(e)));
    }
  }
}
