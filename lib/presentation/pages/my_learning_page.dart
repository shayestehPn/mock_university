import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/presentation/components/general/app_sized_box.dart';

import '../../business_logic/my_learning/my_learning_cubit.dart';
import '../../business_logic/my_learning/my_learning_state.dart';
import '../../utils/enums/api_request_status.dart';
import '../../utils/ui/colors.dart';
import '../components/general/mock_university_app_bar.dart';
import '../components/my_learning/learning_courses_list_content.dart';
import '../components/my_learning/my_learning_tab_bar.dart';

class MyLearningPage extends StatelessWidget {
  const MyLearningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MyLearningCubit>(
      create: (context) {
        final cubit = MyLearningCubit();
        cubit.getLearningCoursesList();
        return cubit;
      },
      child: BlocBuilder<MyLearningCubit, MyLearningState>(
        buildWhen: (pState, nState) {
          return pState.getLearningCoursesListStatus !=
              nState.getLearningCoursesListStatus;
        },
        builder: (context, state) {
          if (state.getLearningCoursesListStatus == ApiRequestStatus.loading ||
              state.getLearningCoursesListStatus == ApiRequestStatus.initial ||
              state.getLearningCoursesListStatus == ApiRequestStatus.failure) {
            return Container();
          }
          return Scaffold(
            backgroundColor: backGroundColor,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(69.h),
              child:
              const MockUniversityAppBar(alignment: Alignment.centerLeft),
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    children: const [
                      HeightSizedBox(height: 11),
                      MyLearningTabBar(),
                      LearningCoursesListContent()
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
