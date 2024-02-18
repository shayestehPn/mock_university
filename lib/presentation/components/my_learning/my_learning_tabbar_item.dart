import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/business_logic/my_learning/my_learning_cubit.dart';
import 'package:mock_university/business_logic/my_learning/my_learning_state.dart';
import 'package:mock_university/utils/extensions/context_extension.dart';

import '../../../utils/ui/colors.dart';
import '../../../utils/ui/styles.dart';

class MyLearningTabBarItem extends StatelessWidget {
  const MyLearningTabBarItem(
      {super.key, required this.itemIndex, required this.title});

  final int itemIndex;
  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyLearningCubit, MyLearningState>(
        buildWhen: (pState, nState) {
      return pState.selectedTabIndex != itemIndex &&
              nState.selectedTabIndex == itemIndex ||
          pState.selectedTabIndex == itemIndex &&
              nState.selectedTabIndex != itemIndex;
    }, builder: (context, state) {
      return GestureDetector(
        onTap: () {
          context.read<MyLearningCubit>().selectTab(itemIndex);
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          margin: EdgeInsets.only(right: 11.w),
          decoration: BoxDecoration(
              boxShadow: [cardBoxShadow],
              borderRadius: BorderRadius.circular(8),
              color: state.selectedTabIndex == itemIndex
                  ? mainColor
                  : backGroundColor),
          child: Text(
            title,
            style: context.appTextTheme.bodyMedium?.copyWith(
                color: state.selectedTabIndex == itemIndex
                    ? white
                    : const Color(0xff787878)),
          ),
        ),
      );
    });
  }
}
