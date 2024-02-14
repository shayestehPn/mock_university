import 'package:freezed_annotation/freezed_annotation.dart';

import '../../entity/general/course_entity.dart';

part "search_data.freezed.dart";

@freezed
class SearchData with _$SearchData {
  factory SearchData({required List<CourseEntity> allCoursesList}) =
      _SearchData;
}
