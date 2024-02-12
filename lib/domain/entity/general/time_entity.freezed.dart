// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimeEntity {
  int get hour => throw _privateConstructorUsedError;
  int get minute => throw _privateConstructorUsedError;
  int get second => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimeEntityCopyWith<TimeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeEntityCopyWith<$Res> {
  factory $TimeEntityCopyWith(
          TimeEntity value, $Res Function(TimeEntity) then) =
      _$TimeEntityCopyWithImpl<$Res, TimeEntity>;
  @useResult
  $Res call({int hour, int minute, int second});
}

/// @nodoc
class _$TimeEntityCopyWithImpl<$Res, $Val extends TimeEntity>
    implements $TimeEntityCopyWith<$Res> {
  _$TimeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hour = null,
    Object? minute = null,
    Object? second = null,
  }) {
    return _then(_value.copyWith(
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int,
      minute: null == minute
          ? _value.minute
          : minute // ignore: cast_nullable_to_non_nullable
              as int,
      second: null == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeEntityImplCopyWith<$Res>
    implements $TimeEntityCopyWith<$Res> {
  factory _$$TimeEntityImplCopyWith(
          _$TimeEntityImpl value, $Res Function(_$TimeEntityImpl) then) =
      __$$TimeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int hour, int minute, int second});
}

/// @nodoc
class __$$TimeEntityImplCopyWithImpl<$Res>
    extends _$TimeEntityCopyWithImpl<$Res, _$TimeEntityImpl>
    implements _$$TimeEntityImplCopyWith<$Res> {
  __$$TimeEntityImplCopyWithImpl(
      _$TimeEntityImpl _value, $Res Function(_$TimeEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hour = null,
    Object? minute = null,
    Object? second = null,
  }) {
    return _then(_$TimeEntityImpl(
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int,
      minute: null == minute
          ? _value.minute
          : minute // ignore: cast_nullable_to_non_nullable
              as int,
      second: null == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TimeEntityImpl implements _TimeEntity {
  const _$TimeEntityImpl(
      {required this.hour, required this.minute, required this.second});

  @override
  final int hour;
  @override
  final int minute;
  @override
  final int second;

  @override
  String toString() {
    return 'TimeEntity(hour: $hour, minute: $minute, second: $second)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeEntityImpl &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.minute, minute) || other.minute == minute) &&
            (identical(other.second, second) || other.second == second));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hour, minute, second);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeEntityImplCopyWith<_$TimeEntityImpl> get copyWith =>
      __$$TimeEntityImplCopyWithImpl<_$TimeEntityImpl>(this, _$identity);
}

abstract class _TimeEntity implements TimeEntity {
  const factory _TimeEntity(
      {required final int hour,
      required final int minute,
      required final int second}) = _$TimeEntityImpl;

  @override
  int get hour;
  @override
  int get minute;
  @override
  int get second;
  @override
  @JsonKey(ignore: true)
  _$$TimeEntityImplCopyWith<_$TimeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
