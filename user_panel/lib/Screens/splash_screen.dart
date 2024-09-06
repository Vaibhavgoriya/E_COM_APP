import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();

  
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 2), () async {
      // Obtain shared preferences.
      Get.off(
        const LoginScreen(),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE7F2E4), // Set the background color
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Center the image
          Expanded(
            child: Center(
              child: Image.asset(
                'assets/images/SKR 1 (splash logo).jpg',
                width: 150, // Adjust the width as needed
                height: 150, // Adjust the height as needed
              ),
            ),
          ),
          // Push the "Created by" text to the bottom
          const Padding(
            padding: EdgeInsets.only(
                bottom: 20.0), // Adjust the padding if needed
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Created by NVR',
                style: TextStyle(
                  fontSize: 16, // Adjust the font size as needed
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Adjust the text color if needed
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
