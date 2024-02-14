// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchData {
  List<CourseEntity> get allCoursesList => throw _privateConstructorUsedError;
  List<String> get topSearchesList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchDataCopyWith<SearchData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDataCopyWith<$Res> {
  factory $SearchDataCopyWith(
          SearchData value, $Res Function(SearchData) then) =
      _$SearchDataCopyWithImpl<$Res, SearchData>;
  @useResult
  $Res call({List<CourseEntity> allCoursesList, List<String> topSearchesList});
}

/// @nodoc
class _$SearchDataCopyWithImpl<$Res, $Val extends SearchData>
    implements $SearchDataCopyWith<$Res> {
  _$SearchDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allCoursesList = null,
    Object? topSearchesList = null,
  }) {
    return _then(_value.copyWith(
      allCoursesList: null == allCoursesList
          ? _value.allCoursesList
          : allCoursesList // ignore: cast_nullable_to_non_nullable
              as List<CourseEntity>,
      topSearchesList: null == topSearchesList
          ? _value.topSearchesList
          : topSearchesList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchDataImplCopyWith<$Res>
    implements $SearchDataCopyWith<$Res> {
  factory _$$SearchDataImplCopyWith(
          _$SearchDataImpl value, $Res Function(_$SearchDataImpl) then) =
      __$$SearchDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CourseEntity> allCoursesList, List<String> topSearchesList});
}

/// @nodoc
class __$$SearchDataImplCopyWithImpl<$Res>
    extends _$SearchDataCopyWithImpl<$Res, _$SearchDataImpl>
    implements _$$SearchDataImplCopyWith<$Res> {
  __$$SearchDataImplCopyWithImpl(
      _$SearchDataImpl _value, $Res Function(_$SearchDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allCoursesList = null,
    Object? topSearchesList = null,
  }) {
    return _then(_$SearchDataImpl(
      allCoursesList: null == allCoursesList
          ? _value._allCoursesList
          : allCoursesList // ignore: cast_nullable_to_non_nullable
              as List<CourseEntity>,
      topSearchesList: null == topSearchesList
          ? _value._topSearchesList
          : topSearchesList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$SearchDataImpl implements _SearchData {
  _$SearchDataImpl(
      {required final List<CourseEntity> allCoursesList,
      required final List<String> topSearchesList})
      : _allCoursesList = allCoursesList,
        _topSearchesList = topSearchesList;

  final List<CourseEntity> _allCoursesList;
  @override
  List<CourseEntity> get allCoursesList {
    if (_allCoursesList is EqualUnmodifiableListView) return _allCoursesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allCoursesList);
  }

  final List<String> _topSearchesList;
  @override
  List<String> get topSearchesList {
    if (_topSearchesList is EqualUnmodifiableListView) return _topSearchesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topSearchesList);
  }

  @override
  String toString() {
    return 'SearchData(allCoursesList: $allCoursesList, topSearchesList: $topSearchesList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchDataImpl &&
            const DeepCollectionEquality()
                .equals(other._allCoursesList, _allCoursesList) &&
            const DeepCollectionEquality()
                .equals(other._topSearchesList, _topSearchesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allCoursesList),
      const DeepCollectionEquality().hash(_topSearchesList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchDataImplCopyWith<_$SearchDataImpl> get copyWith =>
      __$$SearchDataImplCopyWithImpl<_$SearchDataImpl>(this, _$identity);
}

abstract class _SearchData implements SearchData {
  factory _SearchData(
      {required final List<CourseEntity> allCoursesList,
      required final List<String> topSearchesList}) = _$SearchDataImpl;

  @override
  List<CourseEntity> get allCoursesList;
  @override
  List<String> get topSearchesList;
  @override
  @JsonKey(ignore: true)
  _$$SearchDataImplCopyWith<_$SearchDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
