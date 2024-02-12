// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CourseEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  bool get isSaved => throw _privateConstructorUsedError;
  TimeEntity get totalTime => throw _privateConstructorUsedError;
  TimeEntity? get remainingTime => throw _privateConstructorUsedError;
  int get totalNumberOfQuestions => throw _privateConstructorUsedError;
  int? get numberOfAnsweredQuestions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseEntityCopyWith<CourseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseEntityCopyWith<$Res> {
  factory $CourseEntityCopyWith(
          CourseEntity value, $Res Function(CourseEntity) then) =
      _$CourseEntityCopyWithImpl<$Res, CourseEntity>;
  @useResult
  $Res call(
      {String id,
      String name,
      String imageUrl,
      bool isSaved,
      TimeEntity totalTime,
      TimeEntity? remainingTime,
      int totalNumberOfQuestions,
      int? numberOfAnsweredQuestions});

  $TimeEntityCopyWith<$Res> get totalTime;
  $TimeEntityCopyWith<$Res>? get remainingTime;
}

/// @nodoc
class _$CourseEntityCopyWithImpl<$Res, $Val extends CourseEntity>
    implements $CourseEntityCopyWith<$Res> {
  _$CourseEntityCopyWithImpl(this._value, this._then);

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
    Object? isSaved = null,
    Object? totalTime = null,
    Object? remainingTime = freezed,
    Object? totalNumberOfQuestions = null,
    Object? numberOfAnsweredQuestions = freezed,
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
      isSaved: null == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      totalTime: null == totalTime
          ? _value.totalTime
          : totalTime // ignore: cast_nullable_to_non_nullable
              as TimeEntity,
      remainingTime: freezed == remainingTime
          ? _value.remainingTime
          : remainingTime // ignore: cast_nullable_to_non_nullable
              as TimeEntity?,
      totalNumberOfQuestions: null == totalNumberOfQuestions
          ? _value.totalNumberOfQuestions
          : totalNumberOfQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfAnsweredQuestions: freezed == numberOfAnsweredQuestions
          ? _value.numberOfAnsweredQuestions
          : numberOfAnsweredQuestions // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeEntityCopyWith<$Res> get totalTime {
    return $TimeEntityCopyWith<$Res>(_value.totalTime, (value) {
      return _then(_value.copyWith(totalTime: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeEntityCopyWith<$Res>? get remainingTime {
    if (_value.remainingTime == null) {
      return null;
    }

    return $TimeEntityCopyWith<$Res>(_value.remainingTime!, (value) {
      return _then(_value.copyWith(remainingTime: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CourseEntityImplCopyWith<$Res>
    implements $CourseEntityCopyWith<$Res> {
  factory _$$CourseEntityImplCopyWith(
          _$CourseEntityImpl value, $Res Function(_$CourseEntityImpl) then) =
      __$$CourseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String imageUrl,
      bool isSaved,
      TimeEntity totalTime,
      TimeEntity? remainingTime,
      int totalNumberOfQuestions,
      int? numberOfAnsweredQuestions});

  @override
  $TimeEntityCopyWith<$Res> get totalTime;
  @override
  $TimeEntityCopyWith<$Res>? get remainingTime;
}

/// @nodoc
class __$$CourseEntityImplCopyWithImpl<$Res>
    extends _$CourseEntityCopyWithImpl<$Res, _$CourseEntityImpl>
    implements _$$CourseEntityImplCopyWith<$Res> {
  __$$CourseEntityImplCopyWithImpl(
      _$CourseEntityImpl _value, $Res Function(_$CourseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? isSaved = null,
    Object? totalTime = null,
    Object? remainingTime = freezed,
    Object? totalNumberOfQuestions = null,
    Object? numberOfAnsweredQuestions = freezed,
  }) {
    return _then(_$CourseEntityImpl(
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
      isSaved: null == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      totalTime: null == totalTime
          ? _value.totalTime
          : totalTime // ignore: cast_nullable_to_non_nullable
              as TimeEntity,
      remainingTime: freezed == remainingTime
          ? _value.remainingTime
          : remainingTime // ignore: cast_nullable_to_non_nullable
              as TimeEntity?,
      totalNumberOfQuestions: null == totalNumberOfQuestions
          ? _value.totalNumberOfQuestions
          : totalNumberOfQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfAnsweredQuestions: freezed == numberOfAnsweredQuestions
          ? _value.numberOfAnsweredQuestions
          : numberOfAnsweredQuestions // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$CourseEntityImpl implements _CourseEntity {
  const _$CourseEntityImpl(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.isSaved,
      required this.totalTime,
      this.remainingTime,
      required this.totalNumberOfQuestions,
      this.numberOfAnsweredQuestions});

  @override
  final String id;
  @override
  final String name;
  @override
  final String imageUrl;
  @override
  final bool isSaved;
  @override
  final TimeEntity totalTime;
  @override
  final TimeEntity? remainingTime;
  @override
  final int totalNumberOfQuestions;
  @override
  final int? numberOfAnsweredQuestions;

  @override
  String toString() {
    return 'CourseEntity(id: $id, name: $name, imageUrl: $imageUrl, isSaved: $isSaved, totalTime: $totalTime, remainingTime: $remainingTime, totalNumberOfQuestions: $totalNumberOfQuestions, numberOfAnsweredQuestions: $numberOfAnsweredQuestions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.isSaved, isSaved) || other.isSaved == isSaved) &&
            (identical(other.totalTime, totalTime) ||
                other.totalTime == totalTime) &&
            (identical(other.remainingTime, remainingTime) ||
                other.remainingTime == remainingTime) &&
            (identical(other.totalNumberOfQuestions, totalNumberOfQuestions) ||
                other.totalNumberOfQuestions == totalNumberOfQuestions) &&
            (identical(other.numberOfAnsweredQuestions,
                    numberOfAnsweredQuestions) ||
                other.numberOfAnsweredQuestions == numberOfAnsweredQuestions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      imageUrl,
      isSaved,
      totalTime,
      remainingTime,
      totalNumberOfQuestions,
      numberOfAnsweredQuestions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseEntityImplCopyWith<_$CourseEntityImpl> get copyWith =>
      __$$CourseEntityImplCopyWithImpl<_$CourseEntityImpl>(this, _$identity);
}

abstract class _CourseEntity implements CourseEntity {
  const factory _CourseEntity(
      {required final String id,
      required final String name,
      required final String imageUrl,
      required final bool isSaved,
      required final TimeEntity totalTime,
      final TimeEntity? remainingTime,
      required final int totalNumberOfQuestions,
      final int? numberOfAnsweredQuestions}) = _$CourseEntityImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get imageUrl;
  @override
  bool get isSaved;
  @override
  TimeEntity get totalTime;
  @override
  TimeEntity? get remainingTime;
  @override
  int get totalNumberOfQuestions;
  @override
  int? get numberOfAnsweredQuestions;
  @override
  @JsonKey(ignore: true)
  _$$CourseEntityImplCopyWith<_$CourseEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
