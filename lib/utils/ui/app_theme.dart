import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import 'colors.dart';

class AppTheme {
  static var theme = ThemeData(
    fontFamily: fontName,
    useMaterial3: false,
    textTheme: TextTheme(

        ///display
        displayLarge: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 57.sp,
            height: 1.5,
            color: black),
        displayMedium: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 45.sp,
            height: 1.5,
            color: black),
        displaySmall: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 36.sp,
            height: 1.5,
            color: black),

        ///headline
        headlineLarge: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 32.sp,
            height: 1.5,
            color: black),
        headlineMedium: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 28.sp,
            height: 1.5,
            color: black),
        headlineSmall: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 24.sp,
            height: 1.5,
            color: black),


        ///title
        titleLarge: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 22.sp,
            height: 1.5,
            color: black),
        titleMedium: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
            height: 1.5,
            color: black),
        titleSmall: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14.sp,
            height: 1.5,
            color: black),

        ///label
        labelLarge: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14.sp,
            height: 1.5,
            color: black),
        labelMedium: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12.sp,
            height: 1.5,
            color: black),
        labelSmall: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 11.sp,
            height: 1.5,
            color: black),

        ///body
        bodyLarge: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16.sp,
            height: 1.5,
            color: black
        ),
        bodyMedium: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
            height: 1.5,
            color: black),
        bodySmall: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 11.sp,
            height: 1.5,
            color: black),
    ),
  );
}
