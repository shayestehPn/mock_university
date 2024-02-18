import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:mock_university/data/repository/home/home_repository.dart';

import '../../utils/enums/api_request_status.dart';
import '../../utils/error_handling/exception_to_error_object.dart';
import 'my_learning_state.dart';

class MyLearningCubit extends Cubit<MyLearningState> {
  MyLearningCubit()
      : _homeRepository = Get.find<HomeRepository>(),
        super(MyLearningState(
            getLearningCoursesListStatus: ApiRequestStatus.initial));

  final HomeRepository _homeRepository;

  void getLearningCoursesList() async {
    emit(
        state.copyWith(getLearningCoursesListStatus: ApiRequestStatus.loading));
    try {
      var response = await _homeRepository.getLearningCoursesList();

      emit(state.copyWith(
          getLearningCoursesListStatus: ApiRequestStatus.success,
          myLearningData: response));
    } on Exception catch (e) {
      emit(state.copyWith(
          getLearningCoursesListStatus: ApiRequestStatus.failure,
          errorObject: exceptionToErrorObject(e)));
    }
  }

  void selectTab(int selectedTabIndex) {
    emit(state.copyWith(selectedTabIndex: selectedTabIndex));
  }
}
