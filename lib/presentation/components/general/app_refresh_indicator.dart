import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/ui/colors.dart';

class AppRefreshIndicator extends StatelessWidget {
  const AppRefreshIndicator({super.key, required this.onRefreshFunction, required this.child});

  final Function() onRefreshFunction;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      backgroundColor: Colors.white,
        color: mainColor,
        strokeWidth: 2.w,
        onRefresh: (){
          onRefreshFunction();
          return Future.value();
        },
        child: child
    );
  }
}
