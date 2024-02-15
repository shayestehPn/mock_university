import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/business_logic/search/search_state.dart';
import 'package:mock_university/presentation/components/home/course_card.dart';

import '../../../business_logic/search/search_cubit.dart';

class SearchResultContent extends StatelessWidget {
  const SearchResultContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
        buildWhen: (pState, nState) {
          return pState.searchResult !=
              nState.searchResult;
        },
        builder: (context, state) {
      return GridView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.only(top: 16.h, bottom: 100.h),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 16.h, crossAxisSpacing: 17.w),
          physics: const ScrollPhysics(),
          itemCount: state.searchResult.length,
          itemBuilder: (BuildContext context, int index) {
            return CourseCard(
              courseEntity: state.searchResult[index],
              margin: EdgeInsets.zero,
              saveOnCLick: () {
                context.read<SearchCubit>().saveButtonClicked(index);
              },
            );
          });
    });
  }
}
