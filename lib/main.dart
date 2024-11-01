import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/widgets/dialog.dart';
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
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: const Color.fromARGB(255, 68, 36, 122)),
      home: ScreenOne(),
    );
  }
}
