import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/business_logic/home/home_cubit.dart';
import 'package:mock_university/business_logic/home/home_state.dart';
import 'package:mock_university/utils/extensions/context_extension.dart';

import '../../../utils/ui/colors.dart';
import 'course_card.dart';

class RecommendedListContent extends StatelessWidget {
  const RecommendedListContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(buildWhen: (pState, nState) {
      return pState.homeData?.recommendedList ==
          nState.homeData?.recommendedList;
    }, builder: (context, state) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(left: 30.w, top: 10.h),
              child: Text("Recommended for You",
                  style: context.appTextTheme.titleMedium
                      ?.copyWith(color: black.withOpacity(0.6)))),
          Container(
            height: 184.h,
            margin: EdgeInsets.only(top: 15.h),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.homeData!.recommendedList.length,
                padding: EdgeInsets.only(left: 17.w),
                itemBuilder: (context, index) => CourseCard(
                    courseEntity: state.homeData!.recommendedList[index],
                    saveOnCLick: () {
                      context
                          .read<HomeCubit>()
                          .saveButtonClickedOnRecommendedCourse(index);
                    })),
          ),
        ],
      );
    });
  }
}
