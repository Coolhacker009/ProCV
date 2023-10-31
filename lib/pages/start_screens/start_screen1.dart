import 'package:flutter/material.dart';
import 'package:pro_cv/delayed_animation.dart';

class StartScreen1 extends StatefulWidget {
  const StartScreen1({super.key});

  @override
  State<StartScreen1> createState() => _StartScreen1State();
}

class _StartScreen1State extends State<StartScreen1> {
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
                    "assets/img/img1.png",
                    height: 300,
                    width: 300,
                  ))),
          Container(
              child: DelayedAnimation(
            delay: 1000,
            child: Text(
              "Choisissez le modèle de CV qui vous correspond",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ))
        ],
      ),
    ));
  }
}
