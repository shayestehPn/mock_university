import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mock_university/domain/entity/general/user_entity.dart';
part "account_data.freezed.dart";

@freezed
class AccountData with _$AccountData {
  factory AccountData({required UserEntity user}) = _AccountData;
}