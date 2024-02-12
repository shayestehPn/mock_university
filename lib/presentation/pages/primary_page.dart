import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mock_university/presentation/pages/home_page.dart';
import 'package:mock_university/utils/ui/colors.dart';

import '../../business_logic/primary/primary_cubit.dart';
import '../components/primary/primary_navigation_bar.dart';

class PrimaryPage extends StatelessWidget {
  PrimaryPage({Key? key}) : super(key: key);

  final PageController _pageController = PageController(keepPage: true);

  List pageViewItem = [
    const HomePage()
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
                            itemCount: pageViewItem.length,
                            scrollDirection: Axis.horizontal,
                            physics: const NeverScrollableScrollPhysics(),
                            controller: _pageController,
                            itemBuilder: (context, position) {
                              return pageViewItem[position];
                            }),
                        PrimaryNavigationBar(
                          pageController: _pageController,
                        ),
                      ],
                    )),
              ),
            );
          },
        ));
  }
}
