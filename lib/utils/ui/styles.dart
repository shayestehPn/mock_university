import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import 'colors.dart';

double strokeWidthOfRefreshIndicator = 2.w;

final validTextFieldBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(
      color: gray7,
      width: 1.w,
    ));

final errorTextFieldBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(
      color: error,
      width: 1.w,
    ));

final TextStyle errorTextStyle = TextStyle(
    fontFamily: fontName,
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
    color: error);
