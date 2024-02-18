import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      return pState.selectedTabIndex != nState.selectedTabIndex;
    }, builder: (context, state) {
      return Column(
        children: [
          state.selectedTabIndex == 0 || state.selectedTabIndex == 1
              ? ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: (state.myLearningData!.inProgressCoursesList ?? [])
                      .length,
                  itemBuilder: (context, index) =>
                      MyLearningInProgressCourseCard(
                        courseEntity:
                            state.myLearningData!.inProgressCoursesList![index],
                        removeOnClick: () {
                          //context.read<WishesCubit>().removeWishCourse(index);
                        },
                      ))
              : Container(),
          state.selectedTabIndex == 0 || state.selectedTabIndex == 2
              ? ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount:
                      (state.myLearningData!.completedCoursesList ?? []).length,
                  itemBuilder: (context, index) =>
                      MyLearningCompletedCourseCard(
                        courseEntity:
                            state.myLearningData!.completedCoursesList![index],
                        removeOnClick: () {
                          //context.read<WishesCubit>().removeWishCourse(index);
                        },
                      ))
              : Container(),
        ],
      );
    });
  }
}
