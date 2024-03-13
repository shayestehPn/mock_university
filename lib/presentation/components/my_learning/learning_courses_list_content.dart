import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/presentation/components/general/app_sized_box.dart';
import 'package:mock_university/presentation/components/my_learning/mylearning_inprogress_course_card.dart';

import '../../../business_logic/my_learning/my_learning_cubit.dart';
import '../../../business_logic/my_learning/my_learning_state.dart';
import 'my_learning_completed_course_card.dart';

class LearningCoursesListContent extends StatelessWidget {
  const LearningCoursesListContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyLearningCubit, MyLearningState>(
        buildWhen: (pState, nState) {
      return pState.selectedTabIndex != nState.selectedTabIndex || pState.myLearningData!.allCoursesList!=nState.myLearningData!.allCoursesList;
    }, builder: (context, state) {
      return ListView(
        children: [
          const HeightSizedBox(height: 95),
          state.selectedTabIndex == 0 || state.selectedTabIndex == 1
              ? ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
              padding: EdgeInsets.fromLTRB(33.w,0.h,33.w,0),
                  itemCount: (state.myLearningData!.inProgressCoursesList ?? [])
                      .length,
                  itemBuilder: (context, index) =>
                      MyLearningInProgressCourseCard(
                        courseEntity:
                            state.myLearningData!.inProgressCoursesList![index],
                        removeOnClick: () {
                          context.read<MyLearningCubit>().removeCourse(state.myLearningData!.inProgressCoursesList![index]);
                        },
                      ))
              : Container(),
          state.selectedTabIndex == 0 || state.selectedTabIndex == 2
              ? ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const ClampingScrollPhysics(),
              padding: EdgeInsets.fromLTRB(33.w,0.h,33.w,0),
                  shrinkWrap: true,
                  itemCount:
                      (state.myLearningData!.completedCoursesList ?? []).length,
                  itemBuilder: (context, index) =>
                      MyLearningCompletedCourseCard(
                        courseEntity:
                            state.myLearningData!.completedCoursesList![index],
                        removeOnClick: () {
                          context.read<MyLearningCubit>().removeCourse(state.myLearningData!.completedCoursesList![index]);
                        },
                      )) : Container(),
          const HeightSizedBox(height: 75)
        ],
      );
    });
  }
}
