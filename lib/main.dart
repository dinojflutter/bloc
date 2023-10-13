import 'package:bloc_app_2/Core/themes/app_themes.dart';
import 'package:bloc_app_2/Presentation/routes/router_import.dart';
import 'package:bloc_app_2/data/repositories/auth_repo.dart';
import 'package:bloc_app_2/data/repositories/post_repo.dart';
import 'package:bloc_app_2/data/repositories/repository.dart';
import 'package:bloc_app_2/data/repositories/tags_repo.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Core/Constants/my_strings.dart';

void main() {
  runApp(RepositoryProvider(
    create: (context) => Repository(
      postRepo: PostRepo(),
      authRepo: AuthRepo(),
      tagRepo: TagRepo(),
    ),
    child: MyApp(),
  ));
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
          );
        });
  }
}
