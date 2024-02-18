import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/utils/extensions/context_extension.dart';

class CustomOutLinedButton extends StatelessWidget {
  const CustomOutLinedButton({
    super.key,
    required this.title,
    required this.borderColor,
    this.textColor,
    this.height, this.width,
    required this.onClick,
  });

  final String title;
  final Function() onClick;
  final Color borderColor;
  final Color? textColor;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height??48.h,
      width: width,
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: BorderSide(width: 1.w, color: borderColor),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {
            onClick();
          },
          child: Text(
            title,
            style: context.appTextTheme.bodyMedium?.copyWith(
              color: textColor ?? borderColor,
            ),
          )),
    );
  }
}
