import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/utils/ui/colors.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem(
      {super.key,
      required this.selectedIcon,
      required this.unselectedIcon,
      required this.isSelected,
      required this.title,
      required this.onClick});

  final Widget selectedIcon;
  final Widget unselectedIcon;
  final bool isSelected;
  final String title;
  final Function() onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 5.h,
            width: 33.w,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(3),
                  bottomRight: Radius.circular(3),
                ),
                color: isSelected ? mainColor : white),
          ),
          Container(
            margin: EdgeInsets.only(top: 13.h, bottom: 4.h),
            child: isSelected ? selectedIcon : unselectedIcon,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w700,
                color: isSelected ? mainColor : const Color(0xff808080)),
          )
        ],
      ),
    );
  }
}
