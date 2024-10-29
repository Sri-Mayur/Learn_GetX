import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/widgets/navigator3.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator Page 2"),
        backgroundColor: const Color.fromARGB(255, 42, 11, 97),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  //Get.to(ScreenOne());
                  //Navigator.pop(context);
                  //Get.back();
                  Get.to(ScreenThree());
                },
                child: Text("Page Three"))
          ],
        ),
      ),
    );
  }
}
