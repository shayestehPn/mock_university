import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_progress_indicators/simple_progress_indicators.dart';

import '../../../utils/ui/colors.dart';

class GradientProgressBar extends StatefulWidget {
  const GradientProgressBar({super.key, required this.value});

  final double value;

  @override
  State<GradientProgressBar> createState() => _GradientProgressBarState();
}

class _GradientProgressBarState extends State<GradientProgressBar>
    with SingleTickerProviderStateMixin{

  late AnimationController controller;
  late Animation<double> progressAnimation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 600));
    progressAnimation =
        Tween<double>(begin: 0, end: widget.value)
            .animate(controller);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 13.h),
      child: AnimatedBuilder(
        animation: progressAnimation,
        builder: ( context, child) {
          return ProgressBar(
            width: double.infinity,
            value: progressAnimation.value,
            backgroundColor: const Color(0xffF0F0F0),
            height: 6.h,
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                mainColor.withOpacity(0.3),
                mainColor,
              ],
            ),
          );
        },
      ),
    );
  }
}
