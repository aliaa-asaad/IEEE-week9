import 'package:flutter/material.dart';
import 'package:week9/screens/bmi_screen.dart';
import 'package:week9/screens/result_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/' : (context) => BMIScreen(),
        'result': (context) => ResultScreen()
      },
    );
  }
}
