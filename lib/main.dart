import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mock_university/presentation/pages/onboarding_page.dart';
import 'package:mock_university/utils/ui/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //HttpOverrides.global = AppHttpOverrides();
  //await AuthBinding().dependencies();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      minTextAdapt: true,
      designSize: const Size(390, 844),
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: child ?? Container(),
            );
          },
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          //
          supportedLocales: const [
            Locale('fa'),
            Locale('en'),
          ],
          locale: const Locale('en'),
          theme: AppTheme.theme,
          onGenerateRoute: (_) => MaterialPageRoute<void>(builder: (_) {
            return const OnBoardingPage();
          }),
        );
      },
    );
  }
}
