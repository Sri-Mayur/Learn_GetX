import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MediaqueryWidget extends StatelessWidget {
  const MediaqueryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Media Query With GetX"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            //height: MediaQuery.of(context).size.height * 0.4,
            height: Get.height * 0.7,
            width: Get.width * 0.7,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
