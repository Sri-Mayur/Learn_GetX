import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeWidget extends StatefulWidget {
  const ThemeWidget({super.key});

  @override
  State<ThemeWidget> createState() => _ThemeWidgetState();
}

class _ThemeWidgetState extends State<ThemeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme Switcher"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Check the current theme brightness to toggle
                final isDarkTheme =
                    Theme.of(context).brightness == Brightness.dark;
                Get.changeTheme(
                    isDarkTheme ? ThemeData.light() : ThemeData.dark());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors
                    .transparent, // Make the button background transparent
                elevation: 0, // Remove elevation
                padding: EdgeInsets.zero, // Remove padding
                shape: const CircleBorder(), // Make it circular
              ),
              child: Icon(
                // Use the current brightness to determine the icon
                Theme.of(context).brightness == Brightness.dark
                    ? Icons.light_mode
                    : Icons.dark_mode,
                size: 50,
                color: Colors.deepPurple, // Set icon color
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () => Get.toNamed('/snackbar'),
              child: Text("SnackBar")),
        ],
      ),
    );
  }
}
