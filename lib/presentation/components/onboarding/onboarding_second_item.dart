import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/business_logic/localizations/localizations_cubit.dart';
import 'package:mock_university/business_logic/onboarding/onboarding_cubit.dart';
import 'package:mock_university/utils/extensions/context_extension.dart';

import '../general/app_sized_box.dart';
import '../general/images/png_image.dart';

class OnBoardingSecondItem extends StatelessWidget {
  const OnBoardingSecondItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalizationCubit,Locale>(
      builder: ( context, locale ) {
        return  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const HeightSizedBox(height: 38),
            Text(
              context.localizationCubit.getTranslatedValue("about"),
              style: context.appTextTheme.titleMedium?.copyWith(fontSize: 24.sp),
            ),
            Container(
              height: 222.r,
              width: 222.r,
              margin: EdgeInsets.symmetric(vertical: 70.h),
              child: PngImage.examImage,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 45.w),
              child: Text(
                context.localizationCubit.getTranslatedValue("onBoardingSecond"),
                textAlign: TextAlign.center,
                style: context.appTextTheme.bodyLarge,
              ),
            ),
          ],
        );
      },
    );
  }
}
