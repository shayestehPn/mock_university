import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mock_university/presentation/pages/home_page.dart';
import 'package:mock_university/presentation/pages/wishes_page.dart';
import 'package:mock_university/utils/ui/colors.dart';

import '../../business_logic/primary/primary_cubit.dart';
import '../components/primary/primary_navigation_bar.dart';
import 'account_page.dart';

class PrimaryPage extends StatelessWidget {
  PrimaryPage({Key? key}) : super(key: key);

  final PageController pageController = PageController();

  List pageViewItems = [
    const HomePage(),const WishesPage(),
    const HomePage(),const WishesPage(),
    const AccountPage()

  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PrimaryCubit>(
        create: (context) => PrimaryCubit(),
        child: Builder(
          builder: (BuildContext context) {
            return Scaffold(
              body: SafeArea(
                child: Material(
                    color: backGroundColor,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        PageView.builder(
                            itemCount: pageViewItems.length,
                            scrollDirection: Axis.horizontal,
                            physics: const NeverScrollableScrollPhysics(),
                            controller: pageController,
                            itemBuilder: (context, position) {
                              return pageViewItems[position];
                            }),
                        PrimaryNavigationBar(
                          pageController: pageController,
                        ),
                      ],
                    )),
              ),
            );
          },
        ));
  }
}
