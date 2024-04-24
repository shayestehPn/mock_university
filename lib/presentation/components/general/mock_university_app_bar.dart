import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/utils/extensions/context_extension.dart';

import '../../../utils/ui/colors.dart';

class MockUniversityAppBar extends StatelessWidget {
  MockUniversityAppBar({super.key, required this.alignment});

  final Alignment? alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: alignment,
        padding: EdgeInsets.only(top: 19.h, left: 30.w,right: 30.w),
        decoration: const BoxDecoration(color: backGroundColor),
        child: RichText(
          text: TextSpan(
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.sp),
              children: context.localizationCubit.getTextDirection() ==
                      TextDirection.rtl
                  ? [
                      TextSpan(
                          text: "${context.localizationCubit
                              .getTranslatedValue("university")} ",
                          style: TextStyle(color: black)),
                      TextSpan(
                          text:
                              "${context.localizationCubit.getTranslatedValue("mock")} ",
                          style: const TextStyle(color: mainColor)),
                    ]
                  : [
                      TextSpan(
                          text:
                              "${context.localizationCubit.getTranslatedValue("mock")} ",
                          style: const TextStyle(color: mainColor)),
                      TextSpan(
                          text: context.localizationCubit
                              .getTranslatedValue("university"),
                          style: TextStyle(color: black)),
                    ]),
        ));
  }
}
