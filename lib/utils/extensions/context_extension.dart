import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../business_logic/localizations/localizations_cubit.dart';
import '../constants.dart';
import '../ui/colors.dart';

extension ContextExtension on BuildContext {
  void showAlert(String message, bool isError) {
    Get.showSnackbar(
      GetSnackBar(
          margin: EdgeInsets.only(right: 16.w, left: 16.w, top: 10.h),
          isDismissible: true,
          icon: IconButton(
            icon: const Icon(Icons.close),
            color: isError ? error : primary,
            onPressed: () {
              Get.back();
            },
          ),
          borderRadius: 12,
          messageText: Text(
            message,
            textDirection: TextDirection.rtl,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontFamily: fontName,
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: isError ? const Color(0xffFF2E29) : Colors.white,
            ),
          ),
          backgroundColor:
              isError ? const Color(0xffFDF0F0) : const Color(0xff042C43),
          forwardAnimationCurve: Curves.easeOut,
          reverseAnimationCurve: Curves.fastEaseInToSlowEaseOut,
          snackPosition: SnackPosition.TOP,
          animationDuration: const Duration(milliseconds: 400),

          ///400*2=800 so the time of stopping of the animation is 1300-800=500ms
          duration: const Duration(milliseconds: 1400),
          borderColor: isError ? const Color(0xffFFE2E2) : Colors.transparent),
    );
  }

  Future<dynamic> showAppBottomSheet(

      ///the bottom sheet is content sized
      {required Widget widget,
      bool? isDismissible,
      Color? backgroundColor}) async {
    final result = showModalBottomSheet<dynamic>(
        useRootNavigator: true,
        isScrollControlled: true,
        context: this,
        isDismissible: isDismissible ?? true,
        backgroundColor: backgroundColor ?? grayBackGround,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(16), topLeft: Radius.circular(16))),
        builder: (BuildContext context) {
          return widget;
        });
    return result;
  }

  TextTheme get appTextTheme => Theme.of(this).textTheme;
  LocalizationCubit get localizationCubit =>   BlocProvider.of<LocalizationCubit>(this);
}
