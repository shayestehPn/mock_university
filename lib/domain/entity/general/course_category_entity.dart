import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part "course_category_entity.freezed.dart";

@freezed
class CourseCategoryEntity with _$CourseCategoryEntity {
  const factory CourseCategoryEntity({
    required String id,
    required String name,
    required String imageUrl,
    required Color nameColor
  }) = _CourseCategoryEntity;
}