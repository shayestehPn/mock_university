import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/ui/styles.dart';
import '../general/images/svg_image.dart';

class OnBoardingBackButton extends StatelessWidget {
  const OnBoardingBackButton({super.key, required this.onClick});

  final Function() onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 48.h,
        margin: EdgeInsets.only(left: 31.w),
        decoration: BoxDecoration(
          color: const Color(0xffF5F7FB),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [cardBoxShadow],
        ),
        alignment: Alignment.center,
        child: SvgImage.backIcon,
      ),
      onTap: () {
        onClick();
      },
    );
  }
}
