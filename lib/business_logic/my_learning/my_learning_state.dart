import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/presentation_data/home/my_learning_data.dart';
import '../../utils/enums/api_request_status.dart';
import '../../utils/error_handling/error_object.dart';
part 'my_learning_state.freezed.dart';


@freezed
class MyLearningState with _$MyLearningState {
  factory MyLearningState({
    required ApiRequestStatus getLearningCoursesListStatus,
    @Default(0) int selectedTabIndex,
    MyLearningData? myLearningData,
    ErrorEntity? errorObject,
  }) = _MyLearningState;
}