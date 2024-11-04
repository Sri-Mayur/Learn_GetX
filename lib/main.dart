import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/widgets/counter.dart';
import 'package:getx/widgets/showLang.dart';
import 'package:getx/widgets/dialog.dart';
import 'package:getx/widgets/languages.dart';
import 'package:getx/widgets/mediaQuery.dart';
import 'package:getx/widgets/navigator1.dart';
import 'package:getx/widgets/snackbar.dart';
import 'package:getx/widgets/theme.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: const Color.fromARGB(255, 68, 36, 122)),
      home: CounterWidget(),
      getPages: [
        GetPage(name: '/dialog', page: () => DialogWidget()),
        GetPage(name: '/theme', page: () => ThemeWidget()),
        GetPage(name: '/snackbar', page: () => SnackBarWidget()),
        GetPage(name: '/navigator1', page: () => ScreenOne()),
      ],
    );
  }
}
