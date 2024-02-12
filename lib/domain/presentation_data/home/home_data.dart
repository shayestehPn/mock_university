import 'package:freezed_annotation/freezed_annotation.dart';
import '../../entity/general/course_category_entity.dart';
import '../../entity/general/course_entity.dart';

part "home_data.freezed.dart";

@freezed
class HomeData with _$HomeData {
  const factory HomeData(
      {required List<CourseEntity> recommendedList,
      required List<CourseEntity> topCoursesList,
      required List<CourseEntity> popularCoursesList,
      required List<CourseCategoryEntity> categoriesList,
      CourseEntity? inProgressCourse}) = _HomeData;
}
