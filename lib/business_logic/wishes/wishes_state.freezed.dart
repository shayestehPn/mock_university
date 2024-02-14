// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WishesState {
  ApiRequestStatus get getWishListStatus => throw _privateConstructorUsedError;
  WishesData? get wishesData => throw _privateConstructorUsedError;
  ErrorEntity? get errorObject => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WishesStateCopyWith<WishesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishesStateCopyWith<$Res> {
  factory $WishesStateCopyWith(
          WishesState value, $Res Function(WishesState) then) =
      _$WishesStateCopyWithImpl<$Res, WishesState>;
  @useResult
  $Res call(
      {ApiRequestStatus getWishListStatus,
      WishesData? wishesData,
      ErrorEntity? errorObject});

  $WishesDataCopyWith<$Res>? get wishesData;
  $ErrorEntityCopyWith<$Res>? get errorObject;
}

/// @nodoc
class _$WishesStateCopyWithImpl<$Res, $Val extends WishesState>
    implements $WishesStateCopyWith<$Res> {
  _$WishesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getWishListStatus = null,
    Object? wishesData = freezed,
    Object? errorObject = freezed,
  }) {
    return _then(_value.copyWith(
      getWishListStatus: null == getWishListStatus
          ? _value.getWishListStatus
          : getWishListStatus // ignore: cast_nullable_to_non_nullable
              as ApiRequestStatus,
      wishesData: freezed == wishesData
          ? _value.wishesData
          : wishesData // ignore: cast_nullable_to_non_nullable
              as WishesData?,
      errorObject: freezed == errorObject
          ? _value.errorObject
          : errorObject // ignore: cast_nullable_to_non_nullable
              as ErrorEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WishesDataCopyWith<$Res>? get wishesData {
    if (_value.wishesData == null) {
      return null;
    }

    return $WishesDataCopyWith<$Res>(_value.wishesData!, (value) {
      return _then(_value.copyWith(wishesData: value) as $Val);
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
abstract class _$$WishesStateImplCopyWith<$Res>
    implements $WishesStateCopyWith<$Res> {
  factory _$$WishesStateImplCopyWith(
          _$WishesStateImpl value, $Res Function(_$WishesStateImpl) then) =
      __$$WishesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApiRequestStatus getWishListStatus,
      WishesData? wishesData,
      ErrorEntity? errorObject});

  @override
  $WishesDataCopyWith<$Res>? get wishesData;
  @override
  $ErrorEntityCopyWith<$Res>? get errorObject;
}

/// @nodoc
class __$$WishesStateImplCopyWithImpl<$Res>
    extends _$WishesStateCopyWithImpl<$Res, _$WishesStateImpl>
    implements _$$WishesStateImplCopyWith<$Res> {
  __$$WishesStateImplCopyWithImpl(
      _$WishesStateImpl _value, $Res Function(_$WishesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getWishListStatus = null,
    Object? wishesData = freezed,
    Object? errorObject = freezed,
  }) {
    return _then(_$WishesStateImpl(
      getWishListStatus: null == getWishListStatus
          ? _value.getWishListStatus
          : getWishListStatus // ignore: cast_nullable_to_non_nullable
              as ApiRequestStatus,
      wishesData: freezed == wishesData
          ? _value.wishesData
          : wishesData // ignore: cast_nullable_to_non_nullable
              as WishesData?,
      errorObject: freezed == errorObject
          ? _value.errorObject
          : errorObject // ignore: cast_nullable_to_non_nullable
              as ErrorEntity?,
    ));
  }
}

/// @nodoc

class _$WishesStateImpl implements _WishesState {
  _$WishesStateImpl(
      {required this.getWishListStatus, this.wishesData, this.errorObject});

  @override
  final ApiRequestStatus getWishListStatus;
  @override
  final WishesData? wishesData;
  @override
  final ErrorEntity? errorObject;

  @override
  String toString() {
    return 'WishesState(getWishListStatus: $getWishListStatus, wishesData: $wishesData, errorObject: $errorObject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishesStateImpl &&
            (identical(other.getWishListStatus, getWishListStatus) ||
                other.getWishListStatus == getWishListStatus) &&
            (identical(other.wishesData, wishesData) ||
                other.wishesData == wishesData) &&
            (identical(other.errorObject, errorObject) ||
                other.errorObject == errorObject));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, getWishListStatus, wishesData, errorObject);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WishesStateImplCopyWith<_$WishesStateImpl> get copyWith =>
      __$$WishesStateImplCopyWithImpl<_$WishesStateImpl>(this, _$identity);
}

abstract class _WishesState implements WishesState {
  factory _WishesState(
      {required final ApiRequestStatus getWishListStatus,
      final WishesData? wishesData,
      final ErrorEntity? errorObject}) = _$WishesStateImpl;

  @override
  ApiRequestStatus get getWishListStatus;
  @override
  WishesData? get wishesData;
  @override
  ErrorEntity? get errorObject;
  @override
  @JsonKey(ignore: true)
  _$$WishesStateImplCopyWith<_$WishesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
