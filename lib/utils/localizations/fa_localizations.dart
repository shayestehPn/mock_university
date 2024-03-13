
import 'package:intl/intl.dart';

class FaLocalizations {
  static String get welcome => Intl.message('خوش آمدید', name: 'welcome');
  static String get mockUniversity => Intl.message("دانشگاه ساختگی", name: 'mockUniversity');
  static String get onBoardingFirst => Intl.message("یک پلت فرم توقف است که در آن کاربر می تواند با سهولت برنامه موبایل و وب ما در آزمون های آزمایشی مختلف شرکت کند. این نه تنها آزمون های آزمایشی را فراهم می کند، بلکه به کاربر درک بهتری از موضوع می دهد.", name: 'onBoardingFirst');
  static String get continueText => Intl.message("ادامه", name: 'continueText');
  static String get startPracticing => Intl.message("شروع به تمرین", name: 'startPracticing');
  static String get iAgree => Intl.message("موافقم", name: 'iAgree');
  static String get onBoardingSecond => Intl.message("تمام آزمون های آزمایشی شامل توضیحات جزئیات هر سوال است، شما فرصتی برای مشاهده جزئیات خواهید داشت."
      "می توانید تست را در حالت یادگیری یا حالت امتحان باز کنید.", name: 'onBoardingSecond');
  static String get about => Intl.message("درباره", name: 'about');

  static final keyToFunctionMap = {
    'welcome': welcome,
    'mockUniversity': mockUniversity,
    'onBoardingFirst': onBoardingFirst,
    'continueText': continueText,
    "startPracticing": startPracticing,
    "iAgree": iAgree,
    "onBoardingSecond": onBoardingSecond,
    "about": about,
  };
}
