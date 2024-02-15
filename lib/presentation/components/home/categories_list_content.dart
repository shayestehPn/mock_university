import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/business_logic/home/home_cubit.dart';
import 'package:mock_university/business_logic/home/home_state.dart';
import 'package:mock_university/utils/extensions/context_extension.dart';

import '../../../utils/ui/colors.dart';
import 'category_card.dart';

class CategoriesListContent extends StatelessWidget {
  const CategoriesListContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(buildWhen: (pState, nState) {
      return pState.homeData?.categoriesList!=  nState.homeData?.categoriesList;
    }, builder: (context, state) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(left: 30.w, top: 8.h),
              child: Text("Categories",
                  style: context.appTextTheme.titleMedium
                      ?.copyWith(color: black.withOpacity(0.6)))),
          Container(
            height: 127.h,
            margin: EdgeInsets.only(top: 5.h),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.homeData!.recommendedList.length,
                padding: EdgeInsets.only(left: 17.w),
                itemBuilder: (context, index) => CategoryCard(
                      categoryEntity: state.homeData!.categoriesList[index],
                    )),
          ),
        ],
      );
    });
  }
}
