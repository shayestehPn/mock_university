import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_entity.freezed.dart';

@freezed
class TimeEntity with _$TimeEntity {
  const factory TimeEntity({
    required int hour,
    required int minute,
    required int second,
  }) = _TimeEntity;
}
