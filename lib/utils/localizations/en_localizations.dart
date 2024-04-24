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
  static String get about => Intl.message("About", name: 'about');
  static String get onBoardingThird => Intl.message("Learning mode is not time limited and you can view answer immediately and review topic."
      "You can only review topics and correct answer after submission of the test.", name: "onBoardingThird");
  static String get userAgreement => Intl.message("Content consent"
      " and user agreement", name: "userAgreement");
  static String get onBoardingForth => Intl.message("The content of all courses prepared to give best experience and knowledge on each topic. …. We do not guarantee that course content is up to date, but we are working continuously to improve the course content. <Display user agreement here with scrollable content > User must click “Agree” button before moving to the next page. We will disable the next button as long as use is not agreed.",name:"onBoardingForth");
  static String get congratulations => Intl.message("Congratulations!",name:"congratulations");
  static String get onBoardingFifth => Intl.message("You have reached the end of our introduction. We are excited to enroll you to our online Mock University."
      "Thank you for choosing us and “Happy Mocking !\n"
      "\nBest Wishes"
      "\nMock University",name:"onBoardingFifth");
  static String get mock => Intl.message("Mock",name:"mock");
  static String get university => Intl.message("University",name:"university");
  static String get personalInfo => Intl.message("Personal Info",name:"personalInfo");
  static String get yourName => Intl.message("Your name",name:"yourName");
  static String get educationLevel => Intl.message("Education Level",name:"educationLevel");
  static String get address => Intl.message("Address",name:"address");
  static String get contactInfo => Intl.message("Contact Info",name:"contactInfo");
  static String get phoneNumber => Intl.message("Phone number",name:"phoneNumber");
  static String get email => Intl.message("Email",name:"email");
  static String get english => Intl.message("English",name:"english");
  static String get persian => Intl.message("Persian",name:"persian");
  static String get arabic => Intl.message("Arabic",name:"arabic");

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
  };

}
