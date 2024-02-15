import 'package:expand_tap_area/expand_tap_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    required this.icon,
    required this.onClick,
  });

  final Function() onClick;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return ExpandTapWidget(
      onTap: () {
        onClick();
      },
      tapPadding:  EdgeInsets.all(25.w),
      child: icon,
    );
  }
}
