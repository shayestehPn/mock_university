import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/business_logic/search/search_cubit.dart';
import 'package:mock_university/business_logic/search/search_state.dart';
import 'package:mock_university/presentation/components/general/app_icon_button.dart';
import 'package:mock_university/presentation/components/general/images/svg_image.dart';
import 'package:mock_university/utils/extensions/context_extension.dart';
import 'package:speech_to_text/speech_to_text.dart' as speechToText;

import '../../../utils/ui/colors.dart';
import '../../../utils/ui/styles.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  late speechToText.SpeechToText speech;
  String textString = "Press The Button";
  double confidence = 1.0;

  @override
  void initState() {
    super.initState();
    speech = speechToText.SpeechToText();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      buildWhen: (pState, nState) {
        return pState.isListeningToVoice != nState.isListeningToVoice;
      },
      builder: (context, state) {
        return TextFormField(
            textDirection: TextDirection.ltr,
            controller: widget.controller,
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
                        .searchCourse(widget.controller.text);
                  },
                ),
                suffixIcon: state.isListeningToVoice
                    ? AvatarGlow(
                        animate: state.isListeningToVoice,
                        glowColor: mainColor.withOpacity(0.1),
                        duration: const Duration(milliseconds: 2000),
                        repeat: true,
                        curve: Curves.linear,
                        glowCount: 2,
                        child: Container(
                            height: 18.r,
                            width: 18.r,
                            alignment: Alignment.center,
                            child: SvgImage.voiceIcon),
                      )
                    : AppIconButton(
                        icon: Container(
                            height: 18.r,
                            width: 18.r,
                            alignment: Alignment.center,
                            child: SvgImage.voiceIcon),
                        onClick: () {
                          listen(state, context);
                        },
                      )));
      },
    );
  }

  void listen(SearchState state, BuildContext context) async {
    if (!state.isListeningToVoice) {
      bool available = await speech.initialize();
      if (available) {
        context.read<SearchCubit>().setIsListeningToVoice(true);
        speech.listen(
            localeId: "en",
            onResult: (value) {
              textString = value.recognizedWords;
              if (textString.isNotEmpty) {
                widget.controller.text = textString;
              }
              if (value.hasConfidenceRating && value.confidence > 0) {
                confidence = value.confidence;
              }
            });
      }
    } else {
      context.read<SearchCubit>().setIsListeningToVoice(false);
      speech.stop();
    }
  }
}
