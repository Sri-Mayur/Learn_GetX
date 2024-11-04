import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageWidget extends StatelessWidget {
  const LanguageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Language Translation"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListTile(
                title: Center(child: Text('message'.tr)), // Center text
                subtitle: Center(child: Text('name'.tr)), // Center text
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center the buttons
                children: [
                  OutlinedButton(
                    onPressed: () {
                      Get.updateLocale(const Locale('en', 'US'));
                    },
                    child: const Text("English"),
                  ),
                  const SizedBox(width: 10), // Add spacing between buttons
                  OutlinedButton(
                    onPressed: () {
                      Get.updateLocale(const Locale('hi', 'IN'));
                    },
                    child: const Text("Hindi"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
