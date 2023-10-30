import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_cv/delayed_animation.dart';

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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: DelayedAnimation(
              delay: 1000,
              child: Image.asset(
                "assets/img/logo.png",
                height: 250,
                width: 250,
              ),
            ),
          ),
          Container(
              child: DelayedAnimation(
            delay: 1500,
            child: Text(
              "Crééz un CV professionnel n'a jamais été facile",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromARGB(255, 75, 73, 73)),
            ),
          ))
        ],
      )),
    );
  }
}
