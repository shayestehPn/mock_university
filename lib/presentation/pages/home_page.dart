import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/presentation/components/home/home_app_bar.dart';
import 'package:mock_university/utils/extensions/context_extension.dart';

import '../../business_logic/home/home_cubit.dart';
import '../../business_logic/home/home_state.dart';
import '../../utils/enums/api_request_status.dart';
import '../../utils/ui/colors.dart';
import '../components/general/app_refresh_indicator.dart';
import '../components/home/course_card.dart';

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
        builder: (context, state) {
          if (state.getHomeDataStatus == ApiRequestStatus.loading ||
              state.getHomeDataStatus == ApiRequestStatus.initial ||
              state.getHomeDataStatus == ApiRequestStatus.failure) {
            return Container();
          }
          return Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(85.h),
              child: const HomeAppBar(),
            ),
            body: AppRefreshIndicator(
              onRefreshFunction: () {
                context.read<HomeCubit>().getDataForHome();
              },
              child: ListView(
                shrinkWrap: false,
                padding: const EdgeInsets.all(0),
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
                              courseEntity:
                                  state.homeData!.recommendedList[index],
                            )),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
