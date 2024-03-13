
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/business_logic/localizations/localizations_cubit.dart';
import 'package:mock_university/presentation/components/general/images/png_image.dart';
import 'package:mock_university/utils/extensions/context_extension.dart';
import 'package:mock_university/utils/ui/colors.dart';

import '../general/app_sized_box.dart';

class OnBoardingFirstItem extends StatelessWidget {
  const OnBoardingFirstItem({super.key});


  @override
  Widget build(BuildContext context) {
    final cubit=BlocProvider.of<LocalizationCubit>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const HeightSizedBox(height: 38),
        Text(
        cubit.getTranslatedValue("welcome"),
          style: context.appTextTheme.titleMedium?.copyWith(fontSize: 24.sp),
        ),
        Container(
          height: 207.h,
          width: 300.w,
          margin: EdgeInsets.symmetric(vertical: 70.h),
          child: PngImage.learningImage,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 45.w),
          child: RichText(
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text:  cubit.getTranslatedValue("mockUniversity"),
                style:
                    context.appTextTheme.bodyLarge?.copyWith(color: mainColor),
              ),
              TextSpan(
                  text: " ${cubit.getTranslatedValue("onBoardingFirst")}",
                  style: context.appTextTheme.bodyLarge)
            ]),
          ),
        ),
      ],
    );
  }
}
