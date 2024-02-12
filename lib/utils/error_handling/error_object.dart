

import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_object.freezed.dart';

@freezed
class ErrorEntity with _$ErrorEntity {
  const factory ErrorEntity({
    required String title,
    required String description,
    required String solution,
    Exception? exception
  }) = _ErrorEntity;
}