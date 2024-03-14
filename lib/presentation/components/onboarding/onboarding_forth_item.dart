import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/business_logic/localizations/localizations_cubit.dart';
import 'package:mock_university/presentation/components/general/app_sized_box.dart';
import 'package:mock_university/utils/extensions/context_extension.dart';
import 'package:scrollable_text_indicator/scrollable_text_indicator.dart';

import '../../../utils/ui/colors.dart';
import '../general/images/png_image.dart';

class OnBoardingForthItem extends StatelessWidget {
  const OnBoardingForthItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalizationCubit,Locale>(
      builder: ( context, locale ) {
        return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const HeightSizedBox(height: 38),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 70.w),
            child: Text(
              context.localizationCubit.getTranslatedValue("userAgreement"),
              textAlign: TextAlign.center,
              style: context.appTextTheme.titleMedium?.copyWith(fontSize: 24.sp),
            ),
          ),
          Container(
            height: 198.h,
            width: 263.w,
            margin: EdgeInsets.only(top: 70.h, bottom: 38.h),
            child: PngImage.handShakeImage,
          ),
          SizedBox(
            height: 190.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 45.w),
              child: ScrollableTextIndicator(
                text: Text(
                  context.localizationCubit.getTranslatedValue("onBoardingForth"),
                  style: context.appTextTheme.bodyLarge,
                ),
                indicatorBarColor: const Color(0xffD7D7D7),
                indicatorBarWidth: 3.w,
                indicatorThumbColor: neutral80,
                indicatorThumbWidth: 3.w,
                indicatorThumbHeight: 104.h,
              ),
            ),
          )
        ]);
      },
    );
  }
}
