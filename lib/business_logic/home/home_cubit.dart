import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:mock_university/data/repository/home/home_repository.dart';
import 'package:mock_university/domain/entity/general/course_entity.dart';

import '../../utils/enums/api_request_status.dart';
import '../../utils/error_handling/exception_to_error_object.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit()
      :_homeRepository = Get.find<HomeRepository>(),
        super(  HomeState(getHomeDataStatus: ApiRequestStatus.initial));

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

  void saveButtonClickedOnRecommendedCourse(int index){
    List<CourseEntity> coursesList=state.homeData!.recommendedList;
    CourseEntity course=coursesList[index];
    CourseEntity newCourse =coursesList[index].copyWith(
      isSaved: !course.isSaved
    );
    coursesList[index]=newCourse;
    emit(state.copyWith(
      homeData: state.homeData?.copyWith(
        recommendedList: coursesList
      )
    ));
  }

  void saveButtonClickedOnTopCourse(int index){
    List<CourseEntity> coursesList=state.homeData!.topCoursesList;
    CourseEntity course=coursesList[index];
    CourseEntity newCourse =coursesList[index].copyWith(
        isSaved: !course.isSaved
    );
    coursesList[index]=newCourse;
    emit(state.copyWith(
        homeData: state.homeData?.copyWith(
            topCoursesList: coursesList
        )
    ));
  }

  void saveButtonClickedOnPopularCourse(int index){
    List<CourseEntity> coursesList=state.homeData!.popularCoursesList;
    CourseEntity course=coursesList[index];
    CourseEntity newCourse =coursesList[index].copyWith(
        isSaved: !course.isSaved
    );
    coursesList[index]=newCourse;
    emit(state.copyWith(
        homeData: state.homeData?.copyWith(
            popularCoursesList: coursesList
        )
    ));
  }
}
