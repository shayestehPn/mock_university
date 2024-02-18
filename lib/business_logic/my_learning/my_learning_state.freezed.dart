// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_learning_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyLearningState {
  ApiRequestStatus get getLearningCoursesListStatus =>
      throw _privateConstructorUsedError;
  int get selectedTabIndex => throw _privateConstructorUsedError;
  MyLearningData? get myLearningData => throw _privateConstructorUsedError;
  ErrorEntity? get errorObject => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyLearningStateCopyWith<MyLearningState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyLearningStateCopyWith<$Res> {
  factory $MyLearningStateCopyWith(
          MyLearningState value, $Res Function(MyLearningState) then) =
      _$MyLearningStateCopyWithImpl<$Res, MyLearningState>;
  @useResult
  $Res call(
      {ApiRequestStatus getLearningCoursesListStatus,
      int selectedTabIndex,
      MyLearningData? myLearningData,
      ErrorEntity? errorObject});

  $MyLearningDataCopyWith<$Res>? get myLearningData;
  $ErrorEntityCopyWith<$Res>? get errorObject;
}

/// @nodoc
class _$MyLearningStateCopyWithImpl<$Res, $Val extends MyLearningState>
    implements $MyLearningStateCopyWith<$Res> {
  _$MyLearningStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getLearningCoursesListStatus = null,
    Object? selectedTabIndex = null,
    Object? myLearningData = freezed,
    Object? errorObject = freezed,
  }) {
    return _then(_value.copyWith(
      getLearningCoursesListStatus: null == getLearningCoursesListStatus
          ? _value.getLearningCoursesListStatus
          : getLearningCoursesListStatus // ignore: cast_nullable_to_non_nullable
              as ApiRequestStatus,
      selectedTabIndex: null == selectedTabIndex
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      myLearningData: freezed == myLearningData
          ? _value.myLearningData
          : myLearningData // ignore: cast_nullable_to_non_nullable
              as MyLearningData?,
      errorObject: freezed == errorObject
          ? _value.errorObject
          : errorObject // ignore: cast_nullable_to_non_nullable
              as ErrorEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MyLearningDataCopyWith<$Res>? get myLearningData {
    if (_value.myLearningData == null) {
      return null;
    }

    return $MyLearningDataCopyWith<$Res>(_value.myLearningData!, (value) {
      return _then(_value.copyWith(myLearningData: value) as $Val);
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
abstract class _$$MyLearningStateImplCopyWith<$Res>
    implements $MyLearningStateCopyWith<$Res> {
  factory _$$MyLearningStateImplCopyWith(_$MyLearningStateImpl value,
          $Res Function(_$MyLearningStateImpl) then) =
      __$$MyLearningStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApiRequestStatus getLearningCoursesListStatus,
      int selectedTabIndex,
      MyLearningData? myLearningData,
      ErrorEntity? errorObject});

  @override
  $MyLearningDataCopyWith<$Res>? get myLearningData;
  @override
  $ErrorEntityCopyWith<$Res>? get errorObject;
}

/// @nodoc
class __$$MyLearningStateImplCopyWithImpl<$Res>
    extends _$MyLearningStateCopyWithImpl<$Res, _$MyLearningStateImpl>
    implements _$$MyLearningStateImplCopyWith<$Res> {
  __$$MyLearningStateImplCopyWithImpl(
      _$MyLearningStateImpl _value, $Res Function(_$MyLearningStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getLearningCoursesListStatus = null,
    Object? selectedTabIndex = null,
    Object? myLearningData = freezed,
    Object? errorObject = freezed,
  }) {
    return _then(_$MyLearningStateImpl(
      getLearningCoursesListStatus: null == getLearningCoursesListStatus
          ? _value.getLearningCoursesListStatus
          : getLearningCoursesListStatus // ignore: cast_nullable_to_non_nullable
              as ApiRequestStatus,
      selectedTabIndex: null == selectedTabIndex
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      myLearningData: freezed == myLearningData
          ? _value.myLearningData
          : myLearningData // ignore: cast_nullable_to_non_nullable
              as MyLearningData?,
      errorObject: freezed == errorObject
          ? _value.errorObject
          : errorObject // ignore: cast_nullable_to_non_nullable
              as ErrorEntity?,
    ));
  }
}

/// @nodoc

class _$MyLearningStateImpl implements _MyLearningState {
  _$MyLearningStateImpl(
      {required this.getLearningCoursesListStatus,
      this.selectedTabIndex = 0,
      this.myLearningData,
      this.errorObject});

  @override
  final ApiRequestStatus getLearningCoursesListStatus;
  @override
  @JsonKey()
  final int selectedTabIndex;
  @override
  final MyLearningData? myLearningData;
  @override
  final ErrorEntity? errorObject;

  @override
  String toString() {
    return 'MyLearningState(getLearningCoursesListStatus: $getLearningCoursesListStatus, selectedTabIndex: $selectedTabIndex, myLearningData: $myLearningData, errorObject: $errorObject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyLearningStateImpl &&
            (identical(other.getLearningCoursesListStatus,
                    getLearningCoursesListStatus) ||
                other.getLearningCoursesListStatus ==
                    getLearningCoursesListStatus) &&
            (identical(other.selectedTabIndex, selectedTabIndex) ||
                other.selectedTabIndex == selectedTabIndex) &&
            (identical(other.myLearningData, myLearningData) ||
                other.myLearningData == myLearningData) &&
            (identical(other.errorObject, errorObject) ||
                other.errorObject == errorObject));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getLearningCoursesListStatus,
      selectedTabIndex, myLearningData, errorObject);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyLearningStateImplCopyWith<_$MyLearningStateImpl> get copyWith =>
      __$$MyLearningStateImplCopyWithImpl<_$MyLearningStateImpl>(
          this, _$identity);
}

abstract class _MyLearningState implements MyLearningState {
  factory _MyLearningState(
      {required final ApiRequestStatus getLearningCoursesListStatus,
      final int selectedTabIndex,
      final MyLearningData? myLearningData,
      final ErrorEntity? errorObject}) = _$MyLearningStateImpl;

  @override
  ApiRequestStatus get getLearningCoursesListStatus;
  @override
  int get selectedTabIndex;
  @override
  MyLearningData? get myLearningData;
  @override
  ErrorEntity? get errorObject;
  @override
  @JsonKey(ignore: true)
  _$$MyLearningStateImplCopyWith<_$MyLearningStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
