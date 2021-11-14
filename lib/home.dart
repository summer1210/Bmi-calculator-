import 'package:flutter/material.dart';
import 'input_page.dart';
import 'palette.dart';

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Palette.kToDark),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}
