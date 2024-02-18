import 'package:freezed_annotation/freezed_annotation.dart';

import '../../entity/general/course_entity.dart';

part "my_learning_data.freezed.dart";

@freezed
class MyLearningData with _$MyLearningData {
  const MyLearningData._();

  factory MyLearningData({required List<CourseEntity> allCoursesList}) =
      _MyLearningData;

  List<CourseEntity>? get inProgressCoursesList {
    return allCoursesList
        .where((element) =>
            element.numberOfAnsweredQuestions != element.totalNumberOfQuestions)
        .toList();
  }

  List<CourseEntity>? get completedCoursesList {
    return allCoursesList
        .where((element) =>
            element.numberOfAnsweredQuestions == element.totalNumberOfQuestions)
        .toList();
  }
}
