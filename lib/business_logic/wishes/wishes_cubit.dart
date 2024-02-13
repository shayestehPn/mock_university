import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:mock_university/business_logic/wishes/wishes_state.dart';
import 'package:mock_university/data/repository/home/home_repository.dart';

import '../../domain/entity/general/course_entity.dart';
import '../../utils/enums/api_request_status.dart';
import '../../utils/error_handling/exception_to_error_object.dart';

class WishesCubit extends Cubit<WishesState> {
  WishesCubit()
      : _homeRepository = Get.find<HomeRepository>(),
        super(WishesState(getWishList: ApiRequestStatus.initial));

  final HomeRepository _homeRepository;

  void getWishesList() async {
    emit(state.copyWith(getWishList: ApiRequestStatus.loading));
    try {
      var response = await _homeRepository.getWishes();

      emit(state.copyWith(
          getWishList: ApiRequestStatus.success, wishesData: response));
    } on Exception catch (e) {
      emit(state.copyWith(
          getWishList: ApiRequestStatus.failure,
          errorObject: exceptionToErrorObject(e)));
    }
  }

  void removeWishCourse(int index){
    List<CourseEntity> coursesList=state.wishesData!.wishesList;
    coursesList.removeAt(index);
    emit(state.copyWith(
        wishesData: state.wishesData?.copyWith(
            wishesList: coursesList
        )
    ));
  }
}
