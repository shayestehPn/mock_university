import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants.dart';
import '../../../utils/ui/colors.dart';
import '../../../utils/ui/styles.dart';

class AppTextFieldFixedHeight extends StatelessWidget {
  const AppTextFieldFixedHeight({
    super.key,
    required this.height,
    required this.controller,
    this.fontSize,
    this.fontWeight,
    required this.hintText,
    this.validator,
  });

  final TextEditingController controller;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String hintText;
  final double height;
  final Function(String? value)? validator;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SizedBox(
        height: height,
        child: TextFormField(
          textDirection: TextDirection.rtl,
          cursorColor: textFieldCursorColor,
          onTapOutside: (event) => FocusScope.of(context).unfocus(),
          controller: controller,
          textAlign: TextAlign.right,
          textAlignVertical: TextAlignVertical.top,
          maxLines: null,
          expands: true,
          validator: (value) {
            return validator != null ? validator!(value) : null;
          },
          style: TextStyle(
              fontSize: fontSize ?? 14.sp,
              fontFamily: fontName,
              fontWeight: fontWeight ?? FontWeight.w400,
              color: gray2),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(16.w, 10.h, 16.w, 10.h),
              border: validTextFieldBorder,
              focusedBorder: validTextFieldBorder,
              enabledBorder: validTextFieldBorder,
              errorBorder: errorTextFieldBorder,
              focusedErrorBorder: errorTextFieldBorder,
              hintText: hintText,
              counterText: "",

              hintStyle: TextStyle(
                  fontSize: fontSize ?? 14.sp,
                  fontFamily: fontName,
                  fontWeight: fontWeight ?? FontWeight.w400,
                  color: gray7),
              errorStyle: errorTextStyle),
          keyboardType: TextInputType.multiline,
        ),
      ),
    );
  }
}
