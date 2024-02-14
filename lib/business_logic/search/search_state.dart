import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/presentation_data/home/search_data.dart';
import '../../utils/enums/api_request_status.dart';
import '../../utils/error_handling/error_object.dart';


part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  factory SearchState({
    required ApiRequestStatus getCoursesListStatus,
    SearchData? searchData,
    ErrorEntity? errorObject,
  }) = _SearchState;
}