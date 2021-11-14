import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(BMI());

class BMI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI CALCULATOR',
      home: AnimatedSplashScreen(
          duration: 1800,
          splash: 'images/playstore.png',
          nextScreen: BMICalculator(),
          splashTransition: SplashTransition.scaleTransition,
          backgroundColor: Colors.white10),
      debugShowCheckedModeBanner: false,
    );
  }
}
