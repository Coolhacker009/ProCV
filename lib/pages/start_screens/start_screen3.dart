import 'package:flutter/material.dart';
import 'package:pro_cv/delayed_animation.dart';

class StartScreen3 extends StatefulWidget {
  const StartScreen3({super.key});

  @override
  State<StartScreen3> createState() => _StartScreen3State();
}

class _StartScreen3State extends State<StartScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              child: DelayedAnimation(
                  delay: 500,
                  child: Image.asset(
                    "assets/img/img3.png",
                    height: 300,
                    width: 300,
                  ))),
          Container(
              child: DelayedAnimation(
            delay: 1000,
            child: Text(
              "Enregistrez et partagez votre CV",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ))
        ],
      ),
    ));
  }
}
