import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeightSizedBox extends StatelessWidget {
  const HeightSizedBox({super.key, required this.height});

  final int height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height.h);
  }
}

class WidthSizedBox extends StatelessWidget {
  const WidthSizedBox({super.key, required this.width});

  final int width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width.w);
  }
}
