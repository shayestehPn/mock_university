import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../business_logic/my_learning/my_learning_cubit.dart';
import '../../business_logic/my_learning/my_learning_state.dart';
import '../../utils/enums/api_request_status.dart';
import '../../utils/ui/colors.dart';
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
          return const Scaffold(
            backgroundColor: backGroundColor,
            body:  SafeArea(
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  LearningCoursesListContent(),
                  MyLearningTabBar(),
                ],
              ),
            )
          );
        },
      ),
    );
  }
}
