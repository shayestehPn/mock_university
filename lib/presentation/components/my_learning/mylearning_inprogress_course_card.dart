import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/domain/entity/general/course_entity.dart';
import 'package:mock_university/presentation/components/general/app_icon_button.dart';
import 'package:mock_university/presentation/components/general/custom_cached_network_image.dart';
import 'package:mock_university/presentation/components/general/custom_filled_button.dart';
import 'package:mock_university/presentation/components/general/images/svg_image.dart';
import 'package:mock_university/utils/constants.dart';
import 'package:mock_university/utils/extensions/context_extension.dart';
import 'package:mock_university/utils/extensions/time_entity_formatting.dart';
import 'package:mock_university/utils/ui/styles.dart';

import '../../../utils/ui/colors.dart';

class MyLearningInProgressCourseCard extends StatelessWidget {
  const MyLearningInProgressCourseCard(
      {super.key, required this.courseEntity, required this.removeOnClick});

  final CourseEntity courseEntity;
  final Function() removeOnClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16.w, 14.h, 16.w, 9.h),
      margin: EdgeInsets.only(top: 17.h),
      decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [cardBoxShadow]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 134.r,
            width: 134.r,
            alignment: Alignment.center,
            child: CustomCachedNetworkImage(
              imageUrl: courseEntity.imageUrl,
              height: 84.r,
              width: 84.r,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      courseEntity.name,
                      style: context.appTextTheme.titleLarge,
                    ),
                    AppIconButton(
                      icon: SizedBox(
                        height: 18.r,
                        width: 18.r,
                        child: SvgImage.trashcanIcon,
                      ),
                      onClick: () {
                        removeOnClick();
                      },),
                  ],
                ),
                getRichText(
                    "${courseEntity.numberOfAnsweredQuestions.toString()}/${courseEntity.totalNumberOfQuestions}",
                    " question"),
                getRichText(
                    courseEntity.remainingTime!.getTimeText(), " remaining"),
                Padding(
                  padding: EdgeInsets.only(top: 8.h),
                  child: CustomFilledButton(
                      title: "Continue Test",
                      height: 35.h,
                      width: 161.w,
                      onClick: (){

                  }),
                )
              ],
            ),
          )
        ],
      ),
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
