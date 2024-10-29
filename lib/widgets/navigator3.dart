import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator Page 3"),
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

                  //Two Get.back() functions will force to move to screen 1 from screen 3 directly
                  Get.back();
                  Get.back();
                },
                child: Text("Page One"))
          ],
        ),
      ),
    );
  }
}
