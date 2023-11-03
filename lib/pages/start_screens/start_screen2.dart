import 'package:flutter/material.dart';
import 'package:pro_cv/delayed_animation.dart';

class StartScreen2 extends StatefulWidget {
  const StartScreen2({super.key});

  @override
  State<StartScreen2> createState() => _StartScreen2State();
}

class _StartScreen2State extends State<StartScreen2> {
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
                  delay: 400,
                  child: Image.asset(
                    "assets/img/img2.png",
                    height: 300,
                    width: 300,
                  ))),
          Container(
              child: DelayedAnimation(
            delay: 600,
            child: Text(
              "Remplissez le CV avec vos informations personelles",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ))
        ],
      ),
    ));
  }
}
