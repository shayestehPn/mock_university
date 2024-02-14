import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:mock_university/data/repository/home/home_repository.dart';

import '../../utils/enums/api_request_status.dart';
import '../../utils/error_handling/exception_to_error_object.dart';
import 'account_state.dart';

class AccountCubit extends Cubit<AccountState> {
  AccountCubit()
      :_homeRepository = Get.find<HomeRepository>(),
        super(  AccountState(getUserDataStatus: ApiRequestStatus.initial));

  final HomeRepository _homeRepository;

  void getUserData() async {
    emit(state.copyWith(getUserDataStatus: ApiRequestStatus.loading));
    try {
      var response = await _homeRepository.getAccountData();

      emit(state.copyWith(
          getUserDataStatus: ApiRequestStatus.success, userEntity: response));
    } on Exception catch (e) {
      emit(state.copyWith(
          getUserDataStatus: ApiRequestStatus.failure,
          errorObject: exceptionToErrorObject(e)));
    }
  }
}
