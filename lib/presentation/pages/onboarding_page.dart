import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../business_logic/onboarding/onboarding_cubit.dart';
import '../components/onboarding/onboarding_buttons.dart';
import '../components/onboarding/onboarding_fifth_item.dart';
import '../components/onboarding/onboarding_first_item.dart';
import '../components/onboarding/onboarding_forth_item.dart';
import '../components/onboarding/onboarding_second_item.dart';
import '../components/onboarding/onboarding_third_item.dart';

class OnBoardingPage extends StatelessWidget {
  OnBoardingPage({Key? key}) : super(key: key);

  final PageController pageController = PageController(keepPage: true);

  List pageViewItems = [
    const OnBoardingFirstItem(),
    const OnBoardingSecondItem(),
    const OnBoardingThirdItem(),
    const OnBoardingForthItem(),
    const OnBoardingFifthItem()
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnBoardingCubit>(
        create: (context) => OnBoardingCubit(),
        child: Scaffold(
          body: SafeArea(
            child: Directionality(
              textDirection: TextDirection.ltr,
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
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: <Color>[
                          Colors.grey.shade400,
                          Colors.grey.shade300,
                          Colors.grey.shade200,
                          Colors.grey.shade50,
                        ])),
                    child: OnBoardingButtons(pageController: pageController,),
                  ),

                ],
              ),
            ),
          ),
        ));
  }
}
