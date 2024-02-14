import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/utils/extensions/context_extension.dart';
import 'package:mock_university/utils/ui/colors.dart';
import 'package:mock_university/utils/ui/styles.dart';

class TopSearchCard extends StatelessWidget {
  const TopSearchCard({super.key, required this.title, required this.onCLick});

  final String title;
  final Function() onCLick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onCLick();
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        decoration: BoxDecoration(
            color: backGroundColor,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [cardBoxShadow]),
        child: Text(
          title,
          style: context.appTextTheme.bodyMedium
              ?.copyWith(color: const Color(0xff787878)),
        ),
      ),
    );
  }
}
