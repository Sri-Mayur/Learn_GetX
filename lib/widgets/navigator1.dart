import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/widgets/navigator2.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator Page 1"),
        backgroundColor: const Color.fromARGB(255, 52, 17, 112),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(ScreenTwo());
                },
                child: Text("Page Two"))
          ],
        ),
      ),
    );
  }
}
