import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/business_logic/localizations/localizations_cubit.dart';
import 'package:mock_university/presentation/components/account/account_image_card.dart';
import 'package:mock_university/presentation/components/account/personal_information_card.dart';
import 'package:mock_university/presentation/components/general/app_sized_box.dart';
import 'package:mock_university/presentation/components/general/mock_university_app_bar.dart';
import 'package:mock_university/utils/ui/colors.dart';

import '../../business_logic/account/account_cubit.dart';
import '../../business_logic/account/account_state.dart';
import '../../utils/enums/api_request_status.dart';
import '../components/account/contact_information_card.dart';
import '../components/account/select_language_card.dart';
import '../components/general/app_refresh_indicator.dart';
import '../components/general/custom_filled_button.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AccountCubit>(
      create: (context)=>AccountCubit()..getUserData(),
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
          return BlocBuilder<LocalizationCubit,Locale>(
            builder: ( context, locale ) {
              return  Scaffold(
                backgroundColor: backGroundColor,
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(78.h),
                  child:  MockUniversityAppBar(alignment: Alignment.center),
                ),
                body: AppRefreshIndicator(
                    onRefreshFunction: () {
                      context.read<AccountCubit>().getUserData();
                    },
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: [
                        AccountImageCard(userEntity: state.userEntity!),
                        PersonalInformationCard(userEntity: state.userEntity!),
                        ContactInformationCard(userEntity: state.userEntity!),
                        const SelectLanguageCard(),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 48.w),
                          child: CustomFilledButton(
                            title: 'Edit',
                            onClick: () {},
                          ),
                        ),
                        const HeightSizedBox(height: 100)
                      ],
                    )),
              );
            },
          );
        },
      ),
    );
  }
}
