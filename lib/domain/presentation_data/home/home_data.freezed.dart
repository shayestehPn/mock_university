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
  set recommendedList(List<CourseEntity> value) =>
      throw _privateConstructorUsedError;
  List<CourseEntity> get topCoursesList => throw _privateConstructorUsedError;
  set topCoursesList(List<CourseEntity> value) =>
      throw _privateConstructorUsedError;
  List<CourseEntity> get popularCoursesList =>
      throw _privateConstructorUsedError;
  set popularCoursesList(List<CourseEntity> value) =>
      throw _privateConstructorUsedError;
  List<CourseCategoryEntity> get categoriesList =>
      throw _privateConstructorUsedError;
  set categoriesList(List<CourseCategoryEntity> value) =>
      throw _privateConstructorUsedError;
  List<CourseEntity>? get inProgressCoursesList =>
      throw _privateConstructorUsedError;
  set inProgressCoursesList(List<CourseEntity>? value) =>
      throw _privateConstructorUsedError;

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
      List<CourseEntity>? inProgressCoursesList});
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
    Object? inProgressCoursesList = freezed,
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
      inProgressCoursesList: freezed == inProgressCoursesList
          ? _value.inProgressCoursesList
          : inProgressCoursesList // ignore: cast_nullable_to_non_nullable
              as List<CourseEntity>?,
    ) as $Val);
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
      List<CourseEntity>? inProgressCoursesList});
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
    Object? inProgressCoursesList = freezed,
  }) {
    return _then(_$HomeDataImpl(
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
      inProgressCoursesList: freezed == inProgressCoursesList
          ? _value.inProgressCoursesList
          : inProgressCoursesList // ignore: cast_nullable_to_non_nullable
              as List<CourseEntity>?,
    ));
  }
}

/// @nodoc

class _$HomeDataImpl implements _HomeData {
  _$HomeDataImpl(
      {required this.recommendedList,
      required this.topCoursesList,
      required this.popularCoursesList,
      required this.categoriesList,
      this.inProgressCoursesList});

  @override
  List<CourseEntity> recommendedList;
  @override
  List<CourseEntity> topCoursesList;
  @override
  List<CourseEntity> popularCoursesList;
  @override
  List<CourseCategoryEntity> categoriesList;
  @override
  List<CourseEntity>? inProgressCoursesList;

  @override
  String toString() {
    return 'HomeData(recommendedList: $recommendedList, topCoursesList: $topCoursesList, popularCoursesList: $popularCoursesList, categoriesList: $categoriesList, inProgressCoursesList: $inProgressCoursesList)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeDataImplCopyWith<_$HomeDataImpl> get copyWith =>
      __$$HomeDataImplCopyWithImpl<_$HomeDataImpl>(this, _$identity);
}

abstract class _HomeData implements HomeData {
  factory _HomeData(
      {required List<CourseEntity> recommendedList,
      required List<CourseEntity> topCoursesList,
      required List<CourseEntity> popularCoursesList,
      required List<CourseCategoryEntity> categoriesList,
      List<CourseEntity>? inProgressCoursesList}) = _$HomeDataImpl;

  @override
  List<CourseEntity> get recommendedList;
  set recommendedList(List<CourseEntity> value);
  @override
  List<CourseEntity> get topCoursesList;
  set topCoursesList(List<CourseEntity> value);
  @override
  List<CourseEntity> get popularCoursesList;
  set popularCoursesList(List<CourseEntity> value);
  @override
  List<CourseCategoryEntity> get categoriesList;
  set categoriesList(List<CourseCategoryEntity> value);
  @override
  List<CourseEntity>? get inProgressCoursesList;
  set inProgressCoursesList(List<CourseEntity>? value);
  @override
  @JsonKey(ignore: true)
  _$$HomeDataImplCopyWith<_$HomeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
