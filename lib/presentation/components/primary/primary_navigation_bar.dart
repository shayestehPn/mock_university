import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/business_logic/primary/primary_cubit.dart';
import 'package:mock_university/presentation/components/primary/navigation_bar_item.dart';
import 'package:mock_university/utils/ui/styles.dart';

import '../../../utils/ui/colors.dart';
import '../general/images/svg_image.dart';

class PrimaryNavigationBar extends StatelessWidget {
  const PrimaryNavigationBar({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PrimaryCubit, int>(builder: (context, state) {
      return Container(
        height: 70.h,
        decoration: BoxDecoration(
          boxShadow: [cardBoxShadow],
          color: white,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NavigationBarItem(
              selectedIcon: SvgImage.homeSelectedIcon,
              unselectedIcon: SvgImage.homeUnSelectedIcon,
              isSelected: state == 0,
              title: "Home",
              onClick: () {
                context.read<PrimaryCubit>().setCurrentPageIndex(0);
                pageController.animateToPage(0,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.linear);
              },
            ),
            NavigationBarItem(
              selectedIcon: SvgImage.searchSelectedIcon,
              unselectedIcon: SvgImage.searchUnSelectedIcon,
              isSelected: state == 1,
              title: "Search",
              onClick: () {
                context.read<PrimaryCubit>().setCurrentPageIndex(1);
                pageController.animateToPage(1,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.linear);
              },
            ),
            NavigationBarItem(
              selectedIcon: SvgImage.examsSelectedIcon,
              unselectedIcon: SvgImage.examsUnSelectedIcon,
              isSelected: state == 2,
              title: "Exams",
              onClick: () {
                context.read<PrimaryCubit>().setCurrentPageIndex(2);
                pageController.animateToPage(2,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.linear);
              },
            ),
            NavigationBarItem(
              selectedIcon: SvgImage.wishListSelectedIcon,
              unselectedIcon: SvgImage.wishListUnSelectedIcon,
              isSelected: state == 3,
              title: "Wishlist",
              onClick: () {
                context.read<PrimaryCubit>().setCurrentPageIndex(3);
                pageController.animateToPage(3,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.linear);
              },
            ),
            NavigationBarItem(
              selectedIcon: SvgImage.accountSelectedIcon,
              unselectedIcon: SvgImage.accountUnSelectedIcon,
              isSelected: state == 4,
              title: "Account",
              onClick: () {
                context.read<PrimaryCubit>().setCurrentPageIndex(4);
                pageController.animateToPage(4,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.linear);
              },
            ),
          ],
        ),
      );
    });
  }
}
