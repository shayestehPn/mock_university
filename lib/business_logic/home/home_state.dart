import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/presentation_data/home/home_data.dart';
import '../../utils/enums/api_request_status.dart';
import '../../utils/error_handling/error_object.dart';


part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
   factory HomeState({
    required ApiRequestStatus getHomeDataStatus,
    HomeData? homeData,
    ErrorEntity? errorObject,
  }) = _HomeState;
}