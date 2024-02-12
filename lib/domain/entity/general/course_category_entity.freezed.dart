// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_category_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CourseCategoryEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  Color get nameColor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseCategoryEntityCopyWith<CourseCategoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCategoryEntityCopyWith<$Res> {
  factory $CourseCategoryEntityCopyWith(CourseCategoryEntity value,
          $Res Function(CourseCategoryEntity) then) =
      _$CourseCategoryEntityCopyWithImpl<$Res, CourseCategoryEntity>;
  @useResult
  $Res call({String id, String name, String imageUrl, Color nameColor});
}

/// @nodoc
class _$CourseCategoryEntityCopyWithImpl<$Res,
        $Val extends CourseCategoryEntity>
    implements $CourseCategoryEntityCopyWith<$Res> {
  _$CourseCategoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? nameColor = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      nameColor: null == nameColor
          ? _value.nameColor
          : nameColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseCategoryEntityImplCopyWith<$Res>
    implements $CourseCategoryEntityCopyWith<$Res> {
  factory _$$CourseCategoryEntityImplCopyWith(_$CourseCategoryEntityImpl value,
          $Res Function(_$CourseCategoryEntityImpl) then) =
      __$$CourseCategoryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String imageUrl, Color nameColor});
}

/// @nodoc
class __$$CourseCategoryEntityImplCopyWithImpl<$Res>
    extends _$CourseCategoryEntityCopyWithImpl<$Res, _$CourseCategoryEntityImpl>
    implements _$$CourseCategoryEntityImplCopyWith<$Res> {
  __$$CourseCategoryEntityImplCopyWithImpl(_$CourseCategoryEntityImpl _value,
      $Res Function(_$CourseCategoryEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? nameColor = null,
  }) {
    return _then(_$CourseCategoryEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      nameColor: null == nameColor
          ? _value.nameColor
          : nameColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$CourseCategoryEntityImpl implements _CourseCategoryEntity {
  const _$CourseCategoryEntityImpl(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.nameColor});

  @override
  final String id;
  @override
  final String name;
  @override
  final String imageUrl;
  @override
  final Color nameColor;

  @override
  String toString() {
    return 'CourseCategoryEntity(id: $id, name: $name, imageUrl: $imageUrl, nameColor: $nameColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseCategoryEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.nameColor, nameColor) ||
                other.nameColor == nameColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, imageUrl, nameColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseCategoryEntityImplCopyWith<_$CourseCategoryEntityImpl>
      get copyWith =>
          __$$CourseCategoryEntityImplCopyWithImpl<_$CourseCategoryEntityImpl>(
              this, _$identity);
}

abstract class _CourseCategoryEntity implements CourseCategoryEntity {
  const factory _CourseCategoryEntity(
      {required final String id,
      required final String name,
      required final String imageUrl,
      required final Color nameColor}) = _$CourseCategoryEntityImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get imageUrl;
  @override
  Color get nameColor;
  @override
  @JsonKey(ignore: true)
  _$$CourseCategoryEntityImplCopyWith<_$CourseCategoryEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
