import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/presentation/components/general/app_sized_box.dart';
import 'package:mock_university/presentation/components/my_learning/my_learning_tabbar_item.dart';

import '../../../utils/ui/colors.dart';
import '../general/mock_university_app_bar.dart';

class MyLearningTabBar extends StatelessWidget {
  const MyLearningTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const MockUniversityAppBar(alignment: Alignment.centerLeft),
        Container(
            height: 16.h,
          color: backGroundColor,
        ),
        const Row(
          children: [
            WidthSizedBox(width: 30),
            MyLearningTabBarItem(itemIndex: 0, title: "All"),
            MyLearningTabBarItem(itemIndex: 1, title: "In Progress"),
            MyLearningTabBarItem(itemIndex: 2, title: "Completed"),
          ],
        )
      ],
    );
  }
}
