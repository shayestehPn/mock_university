// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ErrorEntity {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get solution => throw _privateConstructorUsedError;
  Exception? get exception => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ErrorEntityCopyWith<ErrorEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorEntityCopyWith<$Res> {
  factory $ErrorEntityCopyWith(
          ErrorEntity value, $Res Function(ErrorEntity) then) =
      _$ErrorEntityCopyWithImpl<$Res, ErrorEntity>;
  @useResult
  $Res call(
      {String title,
      String description,
      String solution,
      Exception? exception});
}

/// @nodoc
class _$ErrorEntityCopyWithImpl<$Res, $Val extends ErrorEntity>
    implements $ErrorEntityCopyWith<$Res> {
  _$ErrorEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? solution = null,
    Object? exception = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      solution: null == solution
          ? _value.solution
          : solution // ignore: cast_nullable_to_non_nullable
              as String,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorEntityImplCopyWith<$Res>
    implements $ErrorEntityCopyWith<$Res> {
  factory _$$ErrorEntityImplCopyWith(
          _$ErrorEntityImpl value, $Res Function(_$ErrorEntityImpl) then) =
      __$$ErrorEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      String solution,
      Exception? exception});
}

/// @nodoc
class __$$ErrorEntityImplCopyWithImpl<$Res>
    extends _$ErrorEntityCopyWithImpl<$Res, _$ErrorEntityImpl>
    implements _$$ErrorEntityImplCopyWith<$Res> {
  __$$ErrorEntityImplCopyWithImpl(
      _$ErrorEntityImpl _value, $Res Function(_$ErrorEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? solution = null,
    Object? exception = freezed,
  }) {
    return _then(_$ErrorEntityImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      solution: null == solution
          ? _value.solution
          : solution // ignore: cast_nullable_to_non_nullable
              as String,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$ErrorEntityImpl implements _ErrorEntity {
  const _$ErrorEntityImpl(
      {required this.title,
      required this.description,
      required this.solution,
      this.exception});

  @override
  final String title;
  @override
  final String description;
  @override
  final String solution;
  @override
  final Exception? exception;

  @override
  String toString() {
    return 'ErrorEntity(title: $title, description: $description, solution: $solution, exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorEntityImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.solution, solution) ||
                other.solution == solution) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, solution, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorEntityImplCopyWith<_$ErrorEntityImpl> get copyWith =>
      __$$ErrorEntityImplCopyWithImpl<_$ErrorEntityImpl>(this, _$identity);
}

abstract class _ErrorEntity implements ErrorEntity {
  const factory _ErrorEntity(
      {required final String title,
      required final String description,
      required final String solution,
      final Exception? exception}) = _$ErrorEntityImpl;

  @override
  String get title;
  @override
  String get description;
  @override
  String get solution;
  @override
  Exception? get exception;
  @override
  @JsonKey(ignore: true)
  _$$ErrorEntityImplCopyWith<_$ErrorEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
