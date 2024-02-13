import 'package:freezed_annotation/freezed_annotation.dart';

import '../../entity/general/course_entity.dart';

part "wishes_data.freezed.dart";

@unfreezed
class WishesData with _$WishesData {
  factory WishesData({required List<CourseEntity> wishesList}) = _WishesData;
}
