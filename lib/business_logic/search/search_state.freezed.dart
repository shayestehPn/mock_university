// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchState {
  ApiRequestStatus get getCoursesListStatus =>
      throw _privateConstructorUsedError;
  SearchData? get searchData => throw _privateConstructorUsedError;
  ErrorEntity? get errorObject => throw _privateConstructorUsedError;
  List<CourseEntity> get searchResult => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {ApiRequestStatus getCoursesListStatus,
      SearchData? searchData,
      ErrorEntity? errorObject,
      List<CourseEntity> searchResult});

  $SearchDataCopyWith<$Res>? get searchData;
  $ErrorEntityCopyWith<$Res>? get errorObject;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getCoursesListStatus = null,
    Object? searchData = freezed,
    Object? errorObject = freezed,
    Object? searchResult = null,
  }) {
    return _then(_value.copyWith(
      getCoursesListStatus: null == getCoursesListStatus
          ? _value.getCoursesListStatus
          : getCoursesListStatus // ignore: cast_nullable_to_non_nullable
              as ApiRequestStatus,
      searchData: freezed == searchData
          ? _value.searchData
          : searchData // ignore: cast_nullable_to_non_nullable
              as SearchData?,
      errorObject: freezed == errorObject
          ? _value.errorObject
          : errorObject // ignore: cast_nullable_to_non_nullable
              as ErrorEntity?,
      searchResult: null == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<CourseEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchDataCopyWith<$Res>? get searchData {
    if (_value.searchData == null) {
      return null;
    }

    return $SearchDataCopyWith<$Res>(_value.searchData!, (value) {
      return _then(_value.copyWith(searchData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorEntityCopyWith<$Res>? get errorObject {
    if (_value.errorObject == null) {
      return null;
    }

    return $ErrorEntityCopyWith<$Res>(_value.errorObject!, (value) {
      return _then(_value.copyWith(errorObject: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApiRequestStatus getCoursesListStatus,
      SearchData? searchData,
      ErrorEntity? errorObject,
      List<CourseEntity> searchResult});

  @override
  $SearchDataCopyWith<$Res>? get searchData;
  @override
  $ErrorEntityCopyWith<$Res>? get errorObject;
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getCoursesListStatus = null,
    Object? searchData = freezed,
    Object? errorObject = freezed,
    Object? searchResult = null,
  }) {
    return _then(_$SearchStateImpl(
      getCoursesListStatus: null == getCoursesListStatus
          ? _value.getCoursesListStatus
          : getCoursesListStatus // ignore: cast_nullable_to_non_nullable
              as ApiRequestStatus,
      searchData: freezed == searchData
          ? _value.searchData
          : searchData // ignore: cast_nullable_to_non_nullable
              as SearchData?,
      errorObject: freezed == errorObject
          ? _value.errorObject
          : errorObject // ignore: cast_nullable_to_non_nullable
              as ErrorEntity?,
      searchResult: null == searchResult
          ? _value._searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<CourseEntity>,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl extends _SearchState {
  const _$SearchStateImpl(
      {required this.getCoursesListStatus,
      this.searchData,
      this.errorObject,
      final List<CourseEntity> searchResult = const []})
      : _searchResult = searchResult,
        super._();

  @override
  final ApiRequestStatus getCoursesListStatus;
  @override
  final SearchData? searchData;
  @override
  final ErrorEntity? errorObject;
  final List<CourseEntity> _searchResult;
  @override
  @JsonKey()
  List<CourseEntity> get searchResult {
    if (_searchResult is EqualUnmodifiableListView) return _searchResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResult);
  }

  @override
  String toString() {
    return 'SearchState(getCoursesListStatus: $getCoursesListStatus, searchData: $searchData, errorObject: $errorObject, searchResult: $searchResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            (identical(other.getCoursesListStatus, getCoursesListStatus) ||
                other.getCoursesListStatus == getCoursesListStatus) &&
            (identical(other.searchData, searchData) ||
                other.searchData == searchData) &&
            (identical(other.errorObject, errorObject) ||
                other.errorObject == errorObject) &&
            const DeepCollectionEquality()
                .equals(other._searchResult, _searchResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getCoursesListStatus, searchData,
      errorObject, const DeepCollectionEquality().hash(_searchResult));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState extends SearchState {
  const factory _SearchState(
      {required final ApiRequestStatus getCoursesListStatus,
      final SearchData? searchData,
      final ErrorEntity? errorObject,
      final List<CourseEntity> searchResult}) = _$SearchStateImpl;
  const _SearchState._() : super._();

  @override
  ApiRequestStatus get getCoursesListStatus;
  @override
  SearchData? get searchData;
  @override
  ErrorEntity? get errorObject;
  @override
  List<CourseEntity> get searchResult;
  @override
  @JsonKey(ignore: true)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
