// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  ApiRequestStatus get getHomeDataStatus => throw _privateConstructorUsedError;
  HomeData? get homeData => throw _privateConstructorUsedError;
  ErrorEntity? get errorObject => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {ApiRequestStatus getHomeDataStatus,
      HomeData? homeData,
      ErrorEntity? errorObject});

  $HomeDataCopyWith<$Res>? get homeData;
  $ErrorEntityCopyWith<$Res>? get errorObject;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getHomeDataStatus = null,
    Object? homeData = freezed,
    Object? errorObject = freezed,
  }) {
    return _then(_value.copyWith(
      getHomeDataStatus: null == getHomeDataStatus
          ? _value.getHomeDataStatus
          : getHomeDataStatus // ignore: cast_nullable_to_non_nullable
              as ApiRequestStatus,
      homeData: freezed == homeData
          ? _value.homeData
          : homeData // ignore: cast_nullable_to_non_nullable
              as HomeData?,
      errorObject: freezed == errorObject
          ? _value.errorObject
          : errorObject // ignore: cast_nullable_to_non_nullable
              as ErrorEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeDataCopyWith<$Res>? get homeData {
    if (_value.homeData == null) {
      return null;
    }

    return $HomeDataCopyWith<$Res>(_value.homeData!, (value) {
      return _then(_value.copyWith(homeData: value) as $Val);
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
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApiRequestStatus getHomeDataStatus,
      HomeData? homeData,
      ErrorEntity? errorObject});

  @override
  $HomeDataCopyWith<$Res>? get homeData;
  @override
  $ErrorEntityCopyWith<$Res>? get errorObject;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getHomeDataStatus = null,
    Object? homeData = freezed,
    Object? errorObject = freezed,
  }) {
    return _then(_$HomeStateImpl(
      getHomeDataStatus: null == getHomeDataStatus
          ? _value.getHomeDataStatus
          : getHomeDataStatus // ignore: cast_nullable_to_non_nullable
              as ApiRequestStatus,
      homeData: freezed == homeData
          ? _value.homeData
          : homeData // ignore: cast_nullable_to_non_nullable
              as HomeData?,
      errorObject: freezed == errorObject
          ? _value.errorObject
          : errorObject // ignore: cast_nullable_to_non_nullable
              as ErrorEntity?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  _$HomeStateImpl(
      {required this.getHomeDataStatus, this.homeData, this.errorObject});

  @override
  final ApiRequestStatus getHomeDataStatus;
  @override
  final HomeData? homeData;
  @override
  final ErrorEntity? errorObject;

  @override
  String toString() {
    return 'HomeState(getHomeDataStatus: $getHomeDataStatus, homeData: $homeData, errorObject: $errorObject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.getHomeDataStatus, getHomeDataStatus) ||
                other.getHomeDataStatus == getHomeDataStatus) &&
            (identical(other.homeData, homeData) ||
                other.homeData == homeData) &&
            (identical(other.errorObject, errorObject) ||
                other.errorObject == errorObject));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, getHomeDataStatus, homeData, errorObject);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  factory _HomeState(
      {required final ApiRequestStatus getHomeDataStatus,
      final HomeData? homeData,
      final ErrorEntity? errorObject}) = _$HomeStateImpl;

  @override
  ApiRequestStatus get getHomeDataStatus;
  @override
  HomeData? get homeData;
  @override
  ErrorEntity? get errorObject;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
