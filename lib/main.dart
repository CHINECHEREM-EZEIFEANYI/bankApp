import 'package:flutter/material.dart';
import 'class.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0XFF12153B),
         // accentColor: Colors.red,
          scaffoldBackgroundColor: Color(0XFF0B1033)),
      home: BMI(),
    );
  }
}
