import 'package:flutter/material.dart';
import 'package:user_panel/Screens/login_screen.dart';
import 'package:user_panel/Screens/register_screen.dart';

import 'Screens/forgot_password_screeen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'User Panel',
      home: _VerificationScreenState(),
    );
  }
}
