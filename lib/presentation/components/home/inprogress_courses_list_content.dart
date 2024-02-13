import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/business_logic/home/home_cubit.dart';
import 'package:mock_university/business_logic/home/home_state.dart';
import 'package:mock_university/presentation/components/home/inprogress_course_card.dart';

class InProgressCoursesListContent extends StatelessWidget {
  const InProgressCoursesListContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(buildWhen: (pState, nState) {
      return listEquals(pState.homeData?.inProgressCoursesList,
          nState.homeData?.inProgressCoursesList);
    }, builder: (context, state) {
      return Container(
        height: 111.h,
        margin: EdgeInsets.only(bottom: 83.h),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.none,   ///not to hide the shadow of cards
            itemCount: (state.homeData!.inProgressCoursesList??[]).length,
            padding: EdgeInsets.only(left: 30.w),
            itemBuilder: (context, index) => InProgressCourseCard(
                  courseEntity: state.homeData!.inProgressCoursesList![index],
                  removeOnClick: () {
                    context.read<HomeCubit>().removeInProgressCourse(index);
                  },
                )),
      );
    });
  }
}
