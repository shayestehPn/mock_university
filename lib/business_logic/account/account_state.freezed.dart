// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountState {
  ApiRequestStatus get getUserDataStatus => throw _privateConstructorUsedError;
  UserEntity? get userEntity => throw _privateConstructorUsedError;
  ErrorEntity? get errorObject => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountStateCopyWith<AccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res, AccountState>;
  @useResult
  $Res call(
      {ApiRequestStatus getUserDataStatus,
      UserEntity? userEntity,
      ErrorEntity? errorObject});

  $UserEntityCopyWith<$Res>? get userEntity;
  $ErrorEntityCopyWith<$Res>? get errorObject;
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res, $Val extends AccountState>
    implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getUserDataStatus = null,
    Object? userEntity = freezed,
    Object? errorObject = freezed,
  }) {
    return _then(_value.copyWith(
      getUserDataStatus: null == getUserDataStatus
          ? _value.getUserDataStatus
          : getUserDataStatus // ignore: cast_nullable_to_non_nullable
              as ApiRequestStatus,
      userEntity: freezed == userEntity
          ? _value.userEntity
          : userEntity // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      errorObject: freezed == errorObject
          ? _value.errorObject
          : errorObject // ignore: cast_nullable_to_non_nullable
              as ErrorEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get userEntity {
    if (_value.userEntity == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_value.userEntity!, (value) {
      return _then(_value.copyWith(userEntity: value) as $Val);
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
abstract class _$$AccountStateImplCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$$AccountStateImplCopyWith(
          _$AccountStateImpl value, $Res Function(_$AccountStateImpl) then) =
      __$$AccountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApiRequestStatus getUserDataStatus,
      UserEntity? userEntity,
      ErrorEntity? errorObject});

  @override
  $UserEntityCopyWith<$Res>? get userEntity;
  @override
  $ErrorEntityCopyWith<$Res>? get errorObject;
}

/// @nodoc
class __$$AccountStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountStateImpl>
    implements _$$AccountStateImplCopyWith<$Res> {
  __$$AccountStateImplCopyWithImpl(
      _$AccountStateImpl _value, $Res Function(_$AccountStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getUserDataStatus = null,
    Object? userEntity = freezed,
    Object? errorObject = freezed,
  }) {
    return _then(_$AccountStateImpl(
      getUserDataStatus: null == getUserDataStatus
          ? _value.getUserDataStatus
          : getUserDataStatus // ignore: cast_nullable_to_non_nullable
              as ApiRequestStatus,
      userEntity: freezed == userEntity
          ? _value.userEntity
          : userEntity // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      errorObject: freezed == errorObject
          ? _value.errorObject
          : errorObject // ignore: cast_nullable_to_non_nullable
              as ErrorEntity?,
    ));
  }
}

/// @nodoc

class _$AccountStateImpl implements _AccountState {
  _$AccountStateImpl(
      {required this.getUserDataStatus, this.userEntity, this.errorObject});

  @override
  final ApiRequestStatus getUserDataStatus;
  @override
  final UserEntity? userEntity;
  @override
  final ErrorEntity? errorObject;

  @override
  String toString() {
    return 'AccountState(getUserDataStatus: $getUserDataStatus, userEntity: $userEntity, errorObject: $errorObject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountStateImpl &&
            (identical(other.getUserDataStatus, getUserDataStatus) ||
                other.getUserDataStatus == getUserDataStatus) &&
            (identical(other.userEntity, userEntity) ||
                other.userEntity == userEntity) &&
            (identical(other.errorObject, errorObject) ||
                other.errorObject == errorObject));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, getUserDataStatus, userEntity, errorObject);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountStateImplCopyWith<_$AccountStateImpl> get copyWith =>
      __$$AccountStateImplCopyWithImpl<_$AccountStateImpl>(this, _$identity);
}

abstract class _AccountState implements AccountState {
  factory _AccountState(
      {required final ApiRequestStatus getUserDataStatus,
      final UserEntity? userEntity,
      final ErrorEntity? errorObject}) = _$AccountStateImpl;

  @override
  ApiRequestStatus get getUserDataStatus;
  @override
  UserEntity? get userEntity;
  @override
  ErrorEntity? get errorObject;
  @override
  @JsonKey(ignore: true)
  _$$AccountStateImplCopyWith<_$AccountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
