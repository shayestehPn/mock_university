import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/presentation_data/home/wishes_data.dart';
import '../../utils/enums/api_request_status.dart';
import '../../utils/error_handling/error_object.dart';


part 'wishes_state.freezed.dart';

@freezed
class WishesState with _$WishesState {
  factory WishesState({
    required ApiRequestStatus getWishListStatus,
    WishesData? wishesData,
    ErrorEntity? errorObject,
  }) = _WishesState;
}