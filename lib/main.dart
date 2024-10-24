import 'package:flutter/material.dart';
import 'package:flutter_test_final/login.dart';
import 'package:flutter_test_final/registration.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/login': (context) => Login(),
        '/registration': (context) => Registration(),
        '/home': (context) => Home(),
      },
      home: Login()
    );
  }
}
