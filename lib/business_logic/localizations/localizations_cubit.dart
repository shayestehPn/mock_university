import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:mock_university/utils/localizations/fa_localizations.dart';

import '../../utils/localizations/ar_localizations.dart';
import '../../utils/localizations/en_localizations.dart';

class LocalizationCubit extends Cubit<Locale> {
  LocalizationCubit() : super(const Locale('en'));

  void changeLocale(Locale locale) {
    emit(locale);
  }

  String getTranslatedValue(String key) {
    switch (state.languageCode) {
      case 'en':
        return EnLocalizations.keyToFunctionMap[key] ?? key;
      case 'ar':
        return ArLocalizations.keyToFunctionMap[key] ?? key;
      case 'fa':
        return FaLocalizations.keyToFunctionMap[key] ?? key;
      default:
        return EnLocalizations.keyToFunctionMap[key] ?? key;
    }
  }

  TextDirection getTextDirection() {
    switch (state.languageCode) {
      case 'en':
        return TextDirection.ltr;
      case 'ar':
        return TextDirection.rtl;
      case 'fa':
        return TextDirection.rtl;
      default:
        return TextDirection.ltr;
    }
  }
}
