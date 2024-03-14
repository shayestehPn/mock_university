
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
  static String get onBoardingThird => Intl.message("حالت یادگیری محدود به زمان نیست و می توانید بلافاصله پاسخ را مشاهده کرده و موضوع را مرور کنید."
      "شما فقط می توانید پس از ارائه آزمون، موضوعات را مرور کنید و پاسخ صحیح را دریافت کنید.", name: "onBoardingThird");
  static String get userAgreement => Intl.message("رضایت محتوا"
      " و قرارداد کاربر", name: "userAgreement");
  static String get onBoardingForth => Intl.message("محتوای همه دوره ها برای ارائه بهترین تجربه و دانش در مورد هر موضوع آماده شده است. .... ما تضمین نمی کنیم که محتوای دوره به روز باشد، اما به طور مداوم برای بهبود محتوای دوره کار می کنیم. <موافقت نامه کاربر را در اینجا با محتوای قابل پیمایش نمایش دهید. > کاربر باید قبل از رفتن به صفحه بعدی روی دکمه ""موافق"" کلیک کند. تا زمانی که استفاده از آن موافقت نشده باشد، دکمه بعدی را غیرفعال خواهیم کرد",name:"onBoardingForth");
  static String get congratulations => Intl.message("تبریک!",name:"congratulations");
  static String get onBoardingFifth => Intl.message("شما به پایان معرفی ما رسیده اید. ما بسیار هیجان زده هستیم که شما را در دانشگاه موک آنلاین خود ثبت نام کنیم."
      "از اینکه ما را انتخاب کردید متشکریم"
  "\nبهترین آرزوها"
  "\nدانشگاه ساختگی",name:"onBoardingFifth");

  static final keyToFunctionMap = {
    'welcome': welcome,
    'mockUniversity': mockUniversity,
    'onBoardingFirst': onBoardingFirst,
    'continueText': continueText,
    "startPracticing": startPracticing,
    "iAgree": iAgree,
    "onBoardingSecond": onBoardingSecond,
    "about": about,
    "onBoardingThird":onBoardingThird,
    "userAgreement":userAgreement,
    "onBoardingForth":onBoardingForth,
    "congratulations":congratulations,
    "onBoardingFifth":onBoardingFifth,
  };
}
