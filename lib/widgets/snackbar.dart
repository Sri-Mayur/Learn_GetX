import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar GetX"),
        backgroundColor: const Color.fromARGB(150, 104, 58, 183),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () => Get.toNamed('/navigator1'),
                child: Text("Navigator")),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.snackbar("Hello Guys! ", "Welcome back to my Youtube Channel!!",
            snackPosition: SnackPosition.BOTTOM, icon: Icon(Icons.add));
      }),
    );
  }
}
