import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mock_university/business_logic/onboarding/onboarding_cubit.dart';
import 'package:mock_university/presentation/components/general/app_sized_box.dart';
import 'package:mock_university/presentation/components/general/custom_filled_button.dart';
import 'package:mock_university/presentation/components/onboarding/onboarding_back_button.dart';
import 'package:mock_university/presentation/pages/primary_page.dart';
import 'package:mock_university/utils/dependency_injection.dart';
import 'package:mock_university/utils/extensions/context_extension.dart';


class OnBoardingButtons extends StatelessWidget {
  const OnBoardingButtons({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, int>(
      builder: (BuildContext context, int state) {
        if (state == 0) {
          return Container(
            margin: EdgeInsets.fromLTRB(44.w, 0, 44.w, 60.h),
            child: CustomFilledButton(
              title: context.localizationCubit.getTranslatedValue("continueText"),
              showLoading: false,
              onClick: () {
                pageController.animateToPage(state + 1,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.linear);

                context.read<OnBoardingCubit>().increaseCurrentPageIndex();
              },
            ),
          );
        }
        return Padding(
          padding: EdgeInsets.only(bottom: 60.h,right: 45.w,left: 31.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: OnBoardingBackButton(
                  onClick: () {
                    pageController.animateToPage(state - 1,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.linear);

                    context.read<OnBoardingCubit>().decreaseCurrentPageIndex();
                  },
                ),
              ),
              const WidthSizedBox(width: 27),
              Expanded(
                flex: 2,
                child: CustomFilledButton(
                    title: state == 3
                        ? context.localizationCubit.getTranslatedValue("iAgree")
                        : state == 4
                            ? context.localizationCubit.getTranslatedValue("startPracticing")
                            : context.localizationCubit.getTranslatedValue("continueText"),
                    onClick: () {
                      if(state==4){
                        Get.to(()=>PrimaryPage(),binding: AppBinding());
                      }else{
                        pageController.animateToPage(state + 1,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.linear);

                        context
                            .read<OnBoardingCubit>()
                            .increaseCurrentPageIndex();
                      }
                    }),
              )
            ],
          ),
        );
      },
    );
  }
}
