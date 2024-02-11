import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants.dart';
import '../../../utils/ui/colors.dart';

class BorderedButton extends StatelessWidget {
  const BorderedButton(
      {super.key,
      required this.height,
       this.width,
      required this.title,
      required this.onClick});

  final double height;
  final double? width;
  final String title;
  final Function() onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: secondaryLight2)),
        alignment: Alignment.center,
        child: Text(
          title,
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: fontName,
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
              color: secondary),
        ),
      ),
    );
  }
}
