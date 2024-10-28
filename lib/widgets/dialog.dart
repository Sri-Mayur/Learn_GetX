import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog Widget"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
                title: Text("GetX dialog alert!"),
                subtitle: Text("GetX dialog alert with GetX"),
                onTap: () => Get.defaultDialog(
                      title: "Delete Chat",
                      middleText: "Are you sure you want to delete this?",
                      titlePadding: EdgeInsets.only(top: 20),
                      contentPadding: EdgeInsets.all(20),
                      confirm: TextButton(
                          onPressed: () => Get.back(), child: Text("Yes")),
                      cancel: TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("NO")),
                    )),
          )
        ],
      ),
    );
  }
}
