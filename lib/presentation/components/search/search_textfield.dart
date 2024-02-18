
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/business_logic/search/search_cubit.dart';
import 'package:mock_university/business_logic/search/search_state.dart';
import 'package:mock_university/presentation/components/general/app_icon_button.dart';
import 'package:mock_university/presentation/components/general/images/svg_image.dart';
import 'package:mock_university/presentation/components/search/voice_glow_icon.dart';
import 'package:mock_university/utils/extensions/context_extension.dart';


import '../../../utils/ui/colors.dart';
import '../../../utils/ui/styles.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return TextFormField(
            textDirection: TextDirection.ltr,
            controller: controller,
            cursorColor: textFieldCursorColor,
            textAlign: TextAlign.left,
            onTapOutside: (event) => FocusScope.of(context).unfocus(),
            style: context.appTextTheme.labelMedium
                ?.copyWith(fontWeight: FontWeight.w300),
            decoration: InputDecoration(
                focusedBorder: validTextFieldBorder.copyWith(
                    borderSide: BorderSide(color: mainColor, width: 1.w)),
                border: validTextFieldBorder.copyWith(
                    borderSide: BorderSide(color: mainColor, width: 1.w)),
                enabledBorder: validTextFieldBorder.copyWith(
                    borderSide: BorderSide(color: mainColor, width: 1.w)),
                hintText: "Search for Course/ Test",
                filled: true,
                fillColor: Colors.white,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 11.w, vertical: 10.h),
                hintStyle: context.appTextTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.w300, color: black.withOpacity(0.3)),
                prefixIcon: AppIconButton(
                  icon: Container(
                      height: 16.r,
                      width: 16.r,
                      alignment: Alignment.center,
                      child: SvgImage.searchUnSelectedIcon),
                  onClick: () {
                    context
                        .read<SearchCubit>()
                        .searchCourse(controller.text);
                  },
                ),
                suffixIcon: VoiceGlowIcon(controller: controller)
                    ));
      },
    );
  }
}
