import 'package:flutter/material.dart';
import 'imput_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF0A0A21),
        scaffoldBackgroundColor: Color(0xFF0A0A21),
      ),
      home: InputPage(),
    );
  }
}
