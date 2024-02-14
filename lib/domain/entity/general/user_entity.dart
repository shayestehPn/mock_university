import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String name,
    required String educationLevel,
    required String address,
    required String mobilePhoneNumber,
    required String email,
    required String imageUrl,
  }) = _UserEntity;
}
