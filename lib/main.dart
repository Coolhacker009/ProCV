import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_cv/delayed_animation.dart';
import 'package:pro_cv/pages/home.dart';
import 'package:pro_cv/pages/start_screens/OnBoardingScreen.dart';
import 'package:pro_cv/pages/start_screens/start_screen1.dart';
import 'package:pro_cv/pages/start_screens/start_screen2.dart';
import 'package:pro_cv/pages/start_screens/start_screen3.dart';

void main() {
  runApp(const MyApp());
}

const myPurple = const Color(0xff5E358A);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: OnboardingScreen());
  }
}
