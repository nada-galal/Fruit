import 'package:bot_toast/bot_toast.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:untitled2/src/application.dart';
import 'package:untitled2/src/common/commons.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  EasyLocalization.logger.enableLevels = [
    LevelMessages.error,
    LevelMessages.warning,
  ];
  Provider.debugCheckInvalidValueType = null;
  preventLandScapeMode();
  //hideStatusBar();
  final dioService = DioService.getInstance();
  dioService
    ..debugMode = true
    ..initInterceptors()
    ..options = BaseOptions(baseUrl: baseApi);

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      path: 'assets/lang',
      fallbackLocale: const Locale('ar'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        builder: BotToastInit(),
        navigatorObservers: [BotToastNavigatorObserver()],
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: const Locale('ar'),
        theme: ThemeData(
          canvasColor: mainGrey,
          scaffoldBackgroundColor: Colors.white,
          pageTransitionsTheme: const PageTransitionsTheme(
            builders: {
              TargetPlatform.android: CupertinoPageTransitionsBuilder(),
              TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            },
          ),
        ),
        home: ChangeNotifierProvider.value(
          value: SplashProvider(),
          child: SplashScreen(),
        ),
      ),
    );
  }
}
