import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/business_logic/localizations/localizations_cubit.dart';
import 'package:mock_university/utils/extensions/context_extension.dart';

import '../general/app_sized_box.dart';
import '../general/images/png_image.dart';

class OnBoardingFifthItem extends StatelessWidget {
  const OnBoardingFifthItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalizationCubit,Locale>(
      builder: ( context, locale ) {
        return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const HeightSizedBox(height: 38),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 70.w),
            child: Text(
              context.localizationCubit.getTranslatedValue("congratulations"),
              textAlign: TextAlign.center,
              style: context.appTextTheme.titleMedium?.copyWith(fontSize: 24.sp),
            ),
          ),
          Container(
            height: 250.h,
            width: 373.w,
            margin: EdgeInsets.only(top: 70.h, bottom: 38.h),
            child: PngImage.congratulationImage,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 45.w),
            child: Text(context.localizationCubit.getTranslatedValue("onBoardingFifth"),
              textAlign: TextAlign.center,
              style: context.appTextTheme.bodyLarge,
            ),
          ),
        ]);
      },
    );
  }
}
