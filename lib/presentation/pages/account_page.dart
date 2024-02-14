import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/business_logic/wishes/wishes_cubit.dart';
import 'package:mock_university/presentation/components/wishes/wish_card.dart';
import 'package:mock_university/presentation/components/wishes/wishes_list_content.dart';
import '../../business_logic/account/account_cubit.dart';
import '../../business_logic/account/account_state.dart';
import '../../business_logic/wishes/wishes_state.dart';
import '../../utils/enums/api_request_status.dart';
import '../components/general/app_refresh_indicator.dart';
import '../components/wishes/wishes_appbar.dart';

class WishesPage extends StatelessWidget {
  const WishesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AccountCubit>(
      create: (context) {
        final cubit = AccountCubit();
        cubit.getUserData();
        return cubit;
      },
      child: BlocBuilder<AccountCubit, AccountState>(
        buildWhen: (pState, nState) {
          return pState.getUserDataStatus != nState.getUserDataStatus;
        },
        builder: (context, state) {
          if (state.getUserDataStatus == ApiRequestStatus.loading ||
              state.getUserDataStatus == ApiRequestStatus.initial ||
              state.getUserDataStatus == ApiRequestStatus.failure) {
            return Container();
          }
          return Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(63.h),
              child: const WishesAppBar(),
            ),
            body: AppRefreshIndicator(
                onRefreshFunction: () {
                  context.read<WishesCubit>().getWishesList();
                },
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [

                  ],
                )
            ),
          );
        },
      ),
    );
  }
}
