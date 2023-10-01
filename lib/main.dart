import 'package:bloc_app_2/Core/themes/app_themes.dart';
import 'package:bloc_app_2/Presentation/routes/router_import.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Core/Constants/my_strings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _approuter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 840),
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
        builder: (context, child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: MyStrings.appName,
            theme: MyThemes.light,
            darkTheme: MyThemes.dark,
            routerConfig: _approuter.config(),
            // home: const Splashscreen(),
          );
        });
  }
}
