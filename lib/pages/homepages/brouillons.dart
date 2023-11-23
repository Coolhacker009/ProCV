import 'package:flutter/material.dart';
import 'package:pro_cv/delayed_animation.dart';
import 'package:pro_cv/widgets/card.dart';
import 'package:pro_cv/widgets/header.dart';

class BrouillonTap extends StatefulWidget {
  BrouillonTap({super.key});

  @override
  State<BrouillonTap> createState() => _BrouillonTapState();
}

class _BrouillonTapState extends State<BrouillonTap> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Center(
            child: Column(children: [
      header(title: "Brouillon", imgLink: "assets/img/home.png"),
      SizedBox(
        height: 20,
      ),
      DelayedAnimation(
        delay: 2,
        child: header2('Brouillon', "assets/img/notepad.png"),
      ),
      card(
          context: context,
          imgLink: 'assets/img/home.png',
          imgCircle: false,
          title: "Pablo Picaso",
          email: "jackberthe009@gmail.com",
          date: "25 octobre 2023",
          heure: "12h03"),
      card(
          context: context,
          imgCircle: false,
          imgLink: 'assets/img/avatar.jpg',
          title: "Pablo Picaso",
          email: "jackberthe009@gmail.com",
          date: "25 octobre 2023",
          heure: "12h03")
    ])));
  }
}
