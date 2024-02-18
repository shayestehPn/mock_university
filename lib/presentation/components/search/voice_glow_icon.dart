import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mock_university/business_logic/search/search_cubit.dart';
import 'package:mock_university/business_logic/search/search_state.dart';
import 'package:speech_to_text/speech_to_text.dart' as speechToText;

import '../../../utils/ui/colors.dart';
import '../general/images/svg_image.dart';

class VoiceGlowIcon extends StatelessWidget {
   VoiceGlowIcon({super.key, required this.controller});

   final speechToText.SpeechToText speech=speechToText.SpeechToText();
   final TextEditingController controller;


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit,SearchState>(
      builder: ( context,  state) {
        return GestureDetector(
          onLongPress: () {
            listen(state,context);
          },
          onLongPressUp: () {
            stopListening(state, context);
          },
          child: AvatarGlow(
            animate: state.isListeningToVoice,
            glowColor: state.isListeningToVoice?
            mainColor.withOpacity(0.1):Colors.white.withOpacity(0.01),
            glowRadiusFactor: 0.5,
            glowCount: 2,
            child: Container(
                height: 18.r,
                width: 18.r,
                alignment: Alignment.center,
                child: SvgImage.voiceIcon),
          ),
        );
      },
    );
  }

  void listen(SearchState state, BuildContext context) async {
    if (!state.isListeningToVoice) {
      bool isAvailable = await speech.initialize();
      if (isAvailable) {
        context.read<SearchCubit>().setIsListeningToVoice(true);
        speech.listen(
            localeId: "en",
            onResult: (value) {
              String textString = value.recognizedWords;
              if (textString.isNotEmpty) {
                controller.text = textString;
              }
            });
      }
    }
  }

  void stopListening(SearchState state,BuildContext context){
    speech.stop();
    context.read<SearchCubit>().setIsListeningToVoice(false);
  }
}
