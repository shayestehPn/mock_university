import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/presentation/components/home/categories_list_content.dart';
import 'package:mock_university/presentation/components/general/mock_university_app_bar.dart';
import 'package:mock_university/presentation/components/home/inprogress_courses_list_content.dart';
import 'package:mock_university/presentation/components/home/popular_courses_list_content.dart';
import 'package:mock_university/presentation/components/home/recommended_list_content.dart';
import 'package:mock_university/presentation/components/home/top_courses_list_content.dart';
import 'package:mock_university/utils/ui/colors.dart';

import '../../business_logic/home/home_cubit.dart';
import '../../business_logic/home/home_state.dart';
import '../../utils/enums/api_request_status.dart';
import '../components/general/app_refresh_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) {
        final cubit = HomeCubit();
        cubit.getDataForHome();
        return cubit;
      },
      child: BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (pState, nState) {
          return pState.getHomeDataStatus != nState.getHomeDataStatus;
        },
        builder: (context, state) {
          if (state.getHomeDataStatus == ApiRequestStatus.loading ||
              state.getHomeDataStatus == ApiRequestStatus.initial ||
              state.getHomeDataStatus == ApiRequestStatus.failure) {
            return Container();
          }
          return Scaffold(
            backgroundColor: backGroundColor,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(85.h),
              child:  const MockUniversityAppBar(alignment: Alignment.topLeft),
            ),
            body: AppRefreshIndicator(
              onRefreshFunction: () {
                context.read<HomeCubit>().getDataForHome();
              },
              child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                ListView(
                  shrinkWrap: false,
                  padding: const EdgeInsets.all(0),
                  children: const [
                    RecommendedListContent(),
                    CategoriesListContent(),
                    TopCoursesListContent(),
                    PopularCoursesListContent()
                  ],
                ),
                    const InProgressCoursesListContent()
              ]),
            ),
          );
        },
      ),
    );
  }
}
