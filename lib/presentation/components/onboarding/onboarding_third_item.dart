import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/utils/extensions/context_extension.dart';

import '../general/app_sized_box.dart';
import '../general/images/png_image.dart';

class OnBoardingThirdItem extends StatelessWidget {
  const OnBoardingThirdItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const HeightSizedBox(height: 38),
        Text(
          "About",
          style: context.appTextTheme.titleMedium?.copyWith(fontSize: 24.sp),
        ),
        Container(
          height: 191.h,
          width: 181.w,
          margin: EdgeInsets.symmetric(vertical: 70.h),
          child: PngImage.timerImage,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 45.w),
          child: Text(
           "Learning mode is not time limited and you can view answer immediately and review topic."
            "You can only review topics and correct answer after submission of the test.",
            textAlign: TextAlign.center,
            style: context.appTextTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}
