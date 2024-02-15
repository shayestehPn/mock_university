import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/presentation/components/general/mock_university_app_bar.dart';
import 'package:mock_university/utils/extensions/context_extension.dart';
import 'package:mock_university/utils/extensions/string_extension.dart';
import 'package:mock_university/utils/ui/colors.dart';

import '../../business_logic/search/search_cubit.dart';
import '../../business_logic/search/search_state.dart';
import '../../utils/enums/api_request_status.dart';
import '../components/search/search_result_content.dart';
import '../components/search/search_textfield.dart';
import '../components/search/top_search_card.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    searchController.text="";
    return BlocProvider<SearchCubit>(
      create: (context) {
        final cubit = SearchCubit();
        cubit.getAllCoursesList();
        return cubit;
      },
      child: BlocBuilder<SearchCubit, SearchState>(
        buildWhen: (pState, nState) {
          return pState.getCoursesListStatus != nState.getCoursesListStatus;
        },
        builder: (context, state) {
          if (state.getCoursesListStatus == ApiRequestStatus.loading ||
              state.getCoursesListStatus == ApiRequestStatus.initial ||
              state.getCoursesListStatus == ApiRequestStatus.failure) {
            return Container();
          }
          return Scaffold(
            backgroundColor: backGroundColor,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(69.h),
              child:
                  const MockUniversityAppBar(alignment: Alignment.centerLeft),
            ),
            body: ListView(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              children: [
                SearchTextField(controller: searchController,
                  searchOnClick: () =>
                  context.read<SearchCubit>().searchCourse(searchController.text.removeSpace())),
                Padding(
                  padding: EdgeInsets.only(top: 16.h, bottom: 13.h),
                  child: Text("Top Searches",
                      style: context.appTextTheme.titleLarge
                          ?.copyWith(fontSize: 20.sp)),
                ),
                Wrap(
                  spacing: 19.w, // gap between adjacent chips
                  runSpacing: 13.h, // gap between lines
                  children: [
                    ...state.searchData!.topSearchesList
                        .map((element) => TopSearchCard(
                            title: element,
                            onCLick: () {
                              searchController.text = element;
                            }))
                        .toList()
                  ],
                ),
                const SearchResultContent()
              ],
            ),
          );
        },
      ),
    );
  }
}
