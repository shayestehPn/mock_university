import 'package:intl/intl.dart';

class ArLocalizations {
  static String get welcome => Intl.message('مرحباً', name: 'welcome');
  static String get mockUniversity => Intl.message("جامعة وهمية", name: 'mockUniversity');
  static String get onBoardingFirst => Intl.message("هي منصة واحدة حيث يمكن للمستخدم حضور اختبارات وهمية مختلفة بسهولة من خلال تطبيق الهاتف المحمول والويب الخاص بنا. وهذا لا يوفر فقط اختبارات وهمية، بل يمنح المستخدم فهمًا أفضل للموضوع.", name: 'onBoardingFirst');
  static String get continueText => Intl.message("يكمل", name: 'continueText');
  static String get startPracticing => Intl.message("البدء في ممارسة", name: 'startPracticing');
  static String get iAgree => Intl.message("أنا موافق", name: 'iAgree');
  static String get onBoardingSecond => Intl.message("تحتوي جميع الاختبارات التجريبية على شرح تفصيلي لكل سؤال، وستتاح لك الفرصة لعرض التفاصيل."
      "يمكنك فتح الاختبار في وضع التعلم أو وضع الاختبار.", name: 'onBoardingSecond');
  static String get about => Intl.message("عن", name: 'about');
  static String get onBoardingThird => Intl.message("وضع التعلم ليس محدودًا بالوقت ويمكنك عرض الإجابة على الفور ومراجعة الموضوع."
      "لا يمكنك مراجعة المواضيع والإجابة الصحيحة إلا بعد تقديم الاختبار.", name: "Learning mode is not time limited and you can view answer immediately and review topic."
      "You can only review topics and correct answer after submission of the test.");
  static String get userAgreement => Intl.message("الموافقة على المحتوى""واتفاقية المستخدم", name: "userAgreement");
  static String get onBoardingForth => Intl.message("تم إعداد محتوى جميع الدورات التدريبية لتقديم أفضل الخبرات والمعرفة في كل موضوع. .... نحن لا نضمن أن محتوى الدورة محدث، ولكننا نعمل بشكل مستمر على تحسين محتوى الدورة. <عرض اتفاقية المستخدم هنا مع المحتوى القابل للتمرير > يجب على المستخدم النقر فوق الزر موافقة. وسنقوم بتعطيل الزر التالي طالما لم يتم الاتفاق على الاستخدام.,",name:"onBoardingForth");
  static String get congratulations => Intl.message("تهانينا!",name:"congratulations");
  static String get onBoardingFifth => Intl.message("لقد وصلت إلى نهاية المقدمة. نحن متحمسون لتسجيلك في جامعتنا الصورية عبر الإنترنت."
      "شكرًا لاختيارك لنا وسعيد بالسخرية!\n"
      "\nأطيب التمنيات"
      "\nجامعة وهمية",name:"onBoardingFifth");
  static String get mock => Intl.message("وهمية",name:"mock");
  static String get university => Intl.message("جامعة",name:"university");
  static String get personalInfo => Intl.message("معلومات شخصية",name:"personalInfo");
  static String get yourName => Intl.message("اسمك",name:"yourName");
  static String get educationLevel => Intl.message("مستوى التعليم",name:"educationLevel");
  static String get address => Intl.message("عنوان",name:"address");
  static String get contactInfo => Intl.message("معلومات الاتصال",name:"contactInfo");
  static String get phoneNumber => Intl.message("رقم التليفون",name:"phoneNumber");
  static String get email => Intl.message("بريد إلكتروني",name:"email");
  static String get english => Intl.message("إنجليزي",name:"english");
  static String get persian => Intl.message("اللغة الفارسية",name:"persian");
  static String get arabic => Intl.message("عربي",name:"arabic");
  static String get edit => Intl.message("يحرر",name:"edit");


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
    "mock":mock,
    "university":university,
    "personalInfo":personalInfo,
    "yourName":yourName,
    "educationLevel":educationLevel,
    "address":address,
    "contactInfo":contactInfo,
    "phoneNumber":phoneNumber,
    "email":email,
    "english":english,
    "persian":persian,
    "arabic":arabic,
    "edit":edit
  };
}
