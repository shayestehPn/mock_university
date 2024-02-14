import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/ui/colors.dart';

class MockUniversityAppBar extends StatelessWidget {
  const MockUniversityAppBar({super.key, required this.alignment});

  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: alignment,
        padding: EdgeInsets.only(top: 19.h, left: 30.w),
        decoration: const BoxDecoration(color: backGroundColor),
        child: RichText(
          text: TextSpan(
              style: const TextStyle(
                  fontWeight: FontWeight.w700, fontSize: 20),
              children: [
                const TextSpan(
                    text: "Mock ",
                    style: TextStyle(color: mainColor)),
                TextSpan(
                    text: "University",
                    style: TextStyle(color: black)),
              ]),
        ));
  }
}
