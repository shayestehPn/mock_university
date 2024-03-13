import 'package:intl/intl.dart';

class ArLocalizations {
  static String get welcome => Intl.message('مرحباً', name: 'welcome');
  static String get mockUniversity => Intl.message("جامعة وهمية", name: 'mockUniversity');
  static String get onBoardingFirst => Intl.message("هي منصة واحدة حيث يمكن للمستخدم حضور اختبارات وهمية مختلفة بسهولة من خلال تطبيق الهاتف المحمول والويب الخاص بنا. وهذا لا يوفر فقط اختبارات وهمية، بل يمنح المستخدم فهمًا أفضل للموضوع.", name: 'onBoardingFirst');
  static String get continueText => Intl.message("يكمل", name: 'continueText');
  static String get startPracticing => Intl.message("البدء في ممارسة", name: 'startPracticing');
  static String get iAgree => Intl.message("أنا موافق", name: 'iAgree');

  static final keyToFunctionMap = {
    'welcome': welcome,
    'mockUniversity': mockUniversity,
    'onBoardingFirst': onBoardingFirst,
    'continueText': continueText,
    "startPracticing": startPracticing,
    "iAgree": iAgree,
  };
}
