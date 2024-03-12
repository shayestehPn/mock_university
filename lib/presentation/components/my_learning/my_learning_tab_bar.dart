import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/presentation/components/my_learning/my_learning_tabbar_item.dart';

import '../general/mock_university_app_bar.dart';

class MyLearningTabBar extends StatelessWidget {
  const MyLearningTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MockUniversityAppBar(alignment: Alignment.centerLeft),
        Row(
          children: [
            MyLearningTabBarItem(itemIndex: 0, title: "All"),
            MyLearningTabBarItem(itemIndex: 1, title: "In Progress"),
            MyLearningTabBarItem(itemIndex: 2, title: "Completed"),
          ],
        )
      ],
    );
  }
}
