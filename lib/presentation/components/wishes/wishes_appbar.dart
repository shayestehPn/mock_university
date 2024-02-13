import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/utils/extensions/context_extension.dart';

import '../../../utils/ui/colors.dart';

class WishesAppBar extends StatelessWidget {
  const WishesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.only(top: 23.h, left: 40.w),
        decoration: const BoxDecoration(color: backGroundColor),
        child: Text(
          "Wishlist",
          style: context.appTextTheme.titleLarge?.copyWith(
            color: const Color(0xff000000),
            fontSize: 20.sp
          ),
        ));
  }
}
