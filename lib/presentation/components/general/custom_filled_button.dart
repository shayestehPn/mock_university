import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/ui/colors.dart';
import 'images/gif.dart';

class CustomFilledButton extends StatelessWidget {
  final String title;
  final Function() onClick;
  final bool? showLoading;
  final double? height;
  final double? width;
  final Color? backgroundColor;

  const CustomFilledButton(
      {super.key,
      required this.title,
      this.showLoading,
      this.height,
      this.width,
      required this.onClick,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return GestureDetector(
        child: Container(
            alignment: Alignment.center,
            height: height ?? 48.h,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: backgroundColor ?? mainColor,
            ),
            child: showLoading ?? false
                ? Gif.whiteLoaderGif
                : Text(title,
                    textAlign: TextAlign.center,
                    style:
                        textTheme.titleMedium?.copyWith(color: Colors.white))),
        onTap: () {
          onClick();
        });
  }
}
