import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/utils/extensions/context_extension.dart';

import '../../../business_logic/home/home_cubit.dart';
import '../../../business_logic/home/home_state.dart';
import '../../../utils/ui/colors.dart';
import '../general/app_sized_box.dart';
import 'course_card.dart';

class PopularCoursesListContent extends StatelessWidget {
  const PopularCoursesListContent({super.key});

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
              padding: EdgeInsets.only(left: 30.w, top: 8.h),
              child: Text("Popular among users",
                  style: context.appTextTheme.titleMedium
                      ?.copyWith(color: black.withOpacity(0.6)))),
          Container(
            height: 184.h,
            margin: EdgeInsets.only(top: 15.h),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.homeData!.popularCoursesList.length,
                padding: EdgeInsets.only(left: 17.w),
                itemBuilder: (context, index) => CourseCard(
                    courseEntity: state.homeData!.popularCoursesList[index],
                    saveOnCLick: () {
                      context
                          .read<HomeCubit>()
                          .saveButtonClickedOnPopularCourse(index);
                    })),
          ),
          const HeightSizedBox(height: 200)
        ],
      );
    });
  }
}
