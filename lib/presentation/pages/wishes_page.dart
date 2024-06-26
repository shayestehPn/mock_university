import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/business_logic/wishes/wishes_cubit.dart';
import 'package:mock_university/presentation/components/wishes/wish_card.dart';
import 'package:mock_university/presentation/components/wishes/wishes_list_content.dart';
import 'package:mock_university/utils/ui/colors.dart';
import '../../business_logic/wishes/wishes_state.dart';
import '../../utils/enums/api_request_status.dart';
import '../components/general/app_refresh_indicator.dart';
import '../components/wishes/wishes_appbar.dart';

class WishesPage extends StatelessWidget {
  const WishesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WishesCubit>(
      create: (context) {
        final cubit = WishesCubit();
        cubit.getWishesList();
        return cubit;
      },
      child: BlocBuilder<WishesCubit, WishesState>(
        buildWhen: (pState, nState) {
          return pState.getWishListStatus != nState.getWishListStatus;
        },
        builder: (context, state) {
          if (state.getWishListStatus == ApiRequestStatus.loading ||
              state.getWishListStatus == ApiRequestStatus.initial ||
              state.getWishListStatus == ApiRequestStatus.failure) {
            return Container();
          }
          return Scaffold(
            backgroundColor: backGroundColor,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(63.h),
              child: const WishesAppBar(),
            ),
            body: AppRefreshIndicator(
              onRefreshFunction: () {
                context.read<WishesCubit>().getWishesList();
              },
              child: const WishesListContent()
            ),
          );
        },
      ),
    );
  }
}
