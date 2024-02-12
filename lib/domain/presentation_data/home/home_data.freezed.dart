// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeData {
  List<CourseEntity> get recommendedList => throw _privateConstructorUsedError;
  List<CourseEntity> get topCoursesList => throw _privateConstructorUsedError;
  List<CourseEntity> get popularCoursesList =>
      throw _privateConstructorUsedError;
  List<CourseCategoryEntity> get categoriesList =>
      throw _privateConstructorUsedError;
  CourseEntity? get inProgressCourse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeDataCopyWith<HomeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDataCopyWith<$Res> {
  factory $HomeDataCopyWith(HomeData value, $Res Function(HomeData) then) =
      _$HomeDataCopyWithImpl<$Res, HomeData>;
  @useResult
  $Res call(
      {List<CourseEntity> recommendedList,
      List<CourseEntity> topCoursesList,
      List<CourseEntity> popularCoursesList,
      List<CourseCategoryEntity> categoriesList,
      CourseEntity? inProgressCourse});

  $CourseEntityCopyWith<$Res>? get inProgressCourse;
}

/// @nodoc
class _$HomeDataCopyWithImpl<$Res, $Val extends HomeData>
    implements $HomeDataCopyWith<$Res> {
  _$HomeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommendedList = null,
    Object? topCoursesList = null,
    Object? popularCoursesList = null,
    Object? categoriesList = null,
    Object? inProgressCourse = freezed,
  }) {
    return _then(_value.copyWith(
      recommendedList: null == recommendedList
          ? _value.recommendedList
          : recommendedList // ignore: cast_nullable_to_non_nullable
              as List<CourseEntity>,
      topCoursesList: null == topCoursesList
          ? _value.topCoursesList
          : topCoursesList // ignore: cast_nullable_to_non_nullable
              as List<CourseEntity>,
      popularCoursesList: null == popularCoursesList
          ? _value.popularCoursesList
          : popularCoursesList // ignore: cast_nullable_to_non_nullable
              as List<CourseEntity>,
      categoriesList: null == categoriesList
          ? _value.categoriesList
          : categoriesList // ignore: cast_nullable_to_non_nullable
              as List<CourseCategoryEntity>,
      inProgressCourse: freezed == inProgressCourse
          ? _value.inProgressCourse
          : inProgressCourse // ignore: cast_nullable_to_non_nullable
              as CourseEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseEntityCopyWith<$Res>? get inProgressCourse {
    if (_value.inProgressCourse == null) {
      return null;
    }

    return $CourseEntityCopyWith<$Res>(_value.inProgressCourse!, (value) {
      return _then(_value.copyWith(inProgressCourse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeDataImplCopyWith<$Res>
    implements $HomeDataCopyWith<$Res> {
  factory _$$HomeDataImplCopyWith(
          _$HomeDataImpl value, $Res Function(_$HomeDataImpl) then) =
      __$$HomeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CourseEntity> recommendedList,
      List<CourseEntity> topCoursesList,
      List<CourseEntity> popularCoursesList,
      List<CourseCategoryEntity> categoriesList,
      CourseEntity? inProgressCourse});

  @override
  $CourseEntityCopyWith<$Res>? get inProgressCourse;
}

/// @nodoc
class __$$HomeDataImplCopyWithImpl<$Res>
    extends _$HomeDataCopyWithImpl<$Res, _$HomeDataImpl>
    implements _$$HomeDataImplCopyWith<$Res> {
  __$$HomeDataImplCopyWithImpl(
      _$HomeDataImpl _value, $Res Function(_$HomeDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommendedList = null,
    Object? topCoursesList = null,
    Object? popularCoursesList = null,
    Object? categoriesList = null,
    Object? inProgressCourse = freezed,
  }) {
    return _then(_$HomeDataImpl(
      recommendedList: null == recommendedList
          ? _value._recommendedList
          : recommendedList // ignore: cast_nullable_to_non_nullable
              as List<CourseEntity>,
      topCoursesList: null == topCoursesList
          ? _value._topCoursesList
          : topCoursesList // ignore: cast_nullable_to_non_nullable
              as List<CourseEntity>,
      popularCoursesList: null == popularCoursesList
          ? _value._popularCoursesList
          : popularCoursesList // ignore: cast_nullable_to_non_nullable
              as List<CourseEntity>,
      categoriesList: null == categoriesList
          ? _value._categoriesList
          : categoriesList // ignore: cast_nullable_to_non_nullable
              as List<CourseCategoryEntity>,
      inProgressCourse: freezed == inProgressCourse
          ? _value.inProgressCourse
          : inProgressCourse // ignore: cast_nullable_to_non_nullable
              as CourseEntity?,
    ));
  }
}

/// @nodoc

class _$HomeDataImpl implements _HomeData {
  const _$HomeDataImpl(
      {required final List<CourseEntity> recommendedList,
      required final List<CourseEntity> topCoursesList,
      required final List<CourseEntity> popularCoursesList,
      required final List<CourseCategoryEntity> categoriesList,
      this.inProgressCourse})
      : _recommendedList = recommendedList,
        _topCoursesList = topCoursesList,
        _popularCoursesList = popularCoursesList,
        _categoriesList = categoriesList;

  final List<CourseEntity> _recommendedList;
  @override
  List<CourseEntity> get recommendedList {
    if (_recommendedList is EqualUnmodifiableListView) return _recommendedList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendedList);
  }

  final List<CourseEntity> _topCoursesList;
  @override
  List<CourseEntity> get topCoursesList {
    if (_topCoursesList is EqualUnmodifiableListView) return _topCoursesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topCoursesList);
  }

  final List<CourseEntity> _popularCoursesList;
  @override
  List<CourseEntity> get popularCoursesList {
    if (_popularCoursesList is EqualUnmodifiableListView)
      return _popularCoursesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularCoursesList);
  }

  final List<CourseCategoryEntity> _categoriesList;
  @override
  List<CourseCategoryEntity> get categoriesList {
    if (_categoriesList is EqualUnmodifiableListView) return _categoriesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoriesList);
  }

  @override
  final CourseEntity? inProgressCourse;

  @override
  String toString() {
    return 'HomeData(recommendedList: $recommendedList, topCoursesList: $topCoursesList, popularCoursesList: $popularCoursesList, categoriesList: $categoriesList, inProgressCourse: $inProgressCourse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeDataImpl &&
            const DeepCollectionEquality()
                .equals(other._recommendedList, _recommendedList) &&
            const DeepCollectionEquality()
                .equals(other._topCoursesList, _topCoursesList) &&
            const DeepCollectionEquality()
                .equals(other._popularCoursesList, _popularCoursesList) &&
            const DeepCollectionEquality()
                .equals(other._categoriesList, _categoriesList) &&
            (identical(other.inProgressCourse, inProgressCourse) ||
                other.inProgressCourse == inProgressCourse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_recommendedList),
      const DeepCollectionEquality().hash(_topCoursesList),
      const DeepCollectionEquality().hash(_popularCoursesList),
      const DeepCollectionEquality().hash(_categoriesList),
      inProgressCourse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeDataImplCopyWith<_$HomeDataImpl> get copyWith =>
      __$$HomeDataImplCopyWithImpl<_$HomeDataImpl>(this, _$identity);
}

abstract class _HomeData implements HomeData {
  const factory _HomeData(
      {required final List<CourseEntity> recommendedList,
      required final List<CourseEntity> topCoursesList,
      required final List<CourseEntity> popularCoursesList,
      required final List<CourseCategoryEntity> categoriesList,
      final CourseEntity? inProgressCourse}) = _$HomeDataImpl;

  @override
  List<CourseEntity> get recommendedList;
  @override
  List<CourseEntity> get topCoursesList;
  @override
  List<CourseEntity> get popularCoursesList;
  @override
  List<CourseCategoryEntity> get categoriesList;
  @override
  CourseEntity? get inProgressCourse;
  @override
  @JsonKey(ignore: true)
  _$$HomeDataImplCopyWith<_$HomeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
