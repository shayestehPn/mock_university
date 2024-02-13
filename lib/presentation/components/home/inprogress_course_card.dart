import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/business_logic/home/home_cubit.dart';
import 'package:mock_university/business_logic/home/home_state.dart';
import 'package:mock_university/domain/entity/general/course_entity.dart';
import 'package:mock_university/presentation/components/general/app_sized_box.dart';
import 'package:mock_university/presentation/components/general/custom_cached_network_image.dart';
import 'package:mock_university/presentation/components/general/images/svg_image.dart';
import 'package:mock_university/presentation/components/home/gradient_progress_bar.dart';
import 'package:mock_university/utils/constants.dart';
import 'package:mock_university/utils/extensions/context_extension.dart';
import 'package:mock_university/utils/extensions/time_entity_formatting.dart';
import 'package:mock_university/utils/ui/styles.dart';

import '../../../utils/ui/colors.dart';

class InProgressCourseCard extends StatelessWidget {
  const InProgressCourseCard({super.key, required this.courseEntity});

  final CourseEntity courseEntity;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeState>(
      builder: ( context,  state) {
        if(state.homeData!.inProgressCourse==null){
          return Container();
        }
        return Container(
          padding: EdgeInsets.fromLTRB(16.w, 14.h, 16.w, 9.h),
          margin: EdgeInsets.fromLTRB(30.w, 0, 30.w, 83.h),
          decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [cardBoxShadow]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomCachedNetworkImage(
                    imageUrl: courseEntity.imageUrl,
                    height: 61.r,
                    width: 61.r,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            courseEntity.name,
                            style: context.appTextTheme.titleLarge,
                          ),
                          const WidthSizedBox(width: 42),
                          GestureDetector(
                            onTap: (){
                              context.read<HomeCubit>().removeInProgressCourseCard();
                            },
                            child: SizedBox(
                              height: 18.r,
                              width: 18.r,
                              child: SvgImage.trashcanIcon,
                            ),
                          )
                        ],
                      ),
                      getRichText(
                          "${courseEntity.numberOfAnsweredQuestions.toString()}/${courseEntity.totalNumberOfQuestions}",
                          " question"),
                      getRichText(
                          courseEntity.remainingTime!.getTimeText(), " remaining"),
                    ],
                  )
                ],
              ),
              GradientProgressBar(
                  value: courseEntity.numberOfAnsweredQuestions! /
                      courseEntity.totalNumberOfQuestions)
            ],
          ),
        );
      },
    );
  }

  RichText getRichText(String firstValue, String secondValue) {
    return RichText(
        text: TextSpan(
            style: TextStyle(fontSize: 12.sp, fontFamily: fontName),
            children: [
          TextSpan(
              text: firstValue,
              style: const TextStyle(
                  fontWeight: FontWeight.w500, color: mainColor)),
          TextSpan(
              text: " $secondValue",
              style: const TextStyle(
                  fontWeight: FontWeight.w400, color: Color(0xffB0B0B2)))
        ]));
  }
}
