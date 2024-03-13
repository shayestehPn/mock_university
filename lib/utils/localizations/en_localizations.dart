import 'package:intl/intl.dart';

class EnLocalizations {
  static String get welcome => Intl.message('Welcome', name: 'welcome');
  static String get mockUniversity => Intl.message("mock university", name: 'mockUniversity');
  static String get onBoardingFirst => Intl.message(" is one stop platform where user can attend different mock-exams with ease of our mobile and web app. This not just provides the mock- exams, it gives user the better understanding of the topic.", name: 'onBoardingFirst');
  static String get continueText => Intl.message("continue", name: 'continueText');
  static String get startPracticing => Intl.message("start practicing", name: 'startPracticing');
  static String get iAgree => Intl.message("I Agree", name: 'iAgree');
  static String get onBoardingSecond => Intl.message("All mock exam contains details explanations of each question, you will have opportunity to view details."
      "You can open test in Learning mode or Exam mode.", name: 'onBoardingSecond');

  static final keyToFunctionMap = {
    'welcome': welcome,
    'mockUniversity': mockUniversity,
    'onBoardingFirst': onBoardingFirst,
    'continueText': continueText,
    "startPracticing": startPracticing,
    "iAgree": iAgree,
    "onBoardingSecond": onBoardingSecond,
  };

}