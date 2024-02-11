
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants.dart';
import '../../../utils/ui/colors.dart';
import '../../../utils/ui/styles.dart';

class AppTextField extends StatelessWidget {
  const AppTextField(
      {super.key,
      required this.controller,
      this.fontSize,
      required this.hintText,
      required this.keyboardType,
      this.fontWeight,
      this.fontColor,
      this.validator, this.maxLength});

  final TextEditingController controller;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String hintText;
  final TextInputType keyboardType;
  final Color? fontColor;
  final Function(String? value)? validator;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
          textDirection: TextDirection.rtl,
          controller: controller,
          cursorColor: textFieldCursorColor,
          textAlign: TextAlign.right,
          maxLength: maxLength,
          validator: (value) {
            return validator != null ? validator!(value) : null;
          },
          onTapOutside: (event) => FocusScope.of(context).unfocus(),
          style: TextStyle(
              fontSize: fontSize ?? 14.sp,
              fontFamily: fontName,
              fontWeight: fontWeight ?? FontWeight.w400,
              color: fontColor ?? gray2),
          decoration: InputDecoration(
            focusedBorder: validTextFieldBorder,
            border: validTextFieldBorder,
            enabledBorder: validTextFieldBorder,
            errorBorder: errorTextFieldBorder,
            focusedErrorBorder: errorTextFieldBorder,
            hintText: hintText,
            counterText: "",

            filled: true,
            fillColor: Colors.white,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 16..w, vertical: 10.h),
            errorStyle: errorTextStyle,
            hintStyle: TextStyle(
                fontSize: fontSize ?? 14.sp,
                fontFamily: fontName,
                fontWeight: fontWeight ?? FontWeight.w400,
                color: gray7),
          ),
          keyboardType: keyboardType),
    );
  }
}
