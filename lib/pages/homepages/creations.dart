import 'package:flutter/material.dart';
import 'package:pro_cv/delayed_animation.dart';
import 'package:pro_cv/widgets/card.dart';
import 'package:pro_cv/widgets/header.dart';

class CreationsTap extends StatefulWidget {
  Function init;
  CreationsTap({super.key, required this.init});

  @override
  State<CreationsTap> createState() => _CreationsTapState();
}

class _CreationsTapState extends State<CreationsTap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Center(
              child: Column(children: [
        DelayedAnimation(
            delay: 5,
            child:
                header(title: "Créations", imgLink: "assets/img/folder2.png")),
        card(
            context: context,
            imgLink: 'assets/img/avatar.jpg',
            title: "Pablo Picaso",
            email: "jackberthe009@gmail.com",
            date: "25 octobre 2023",
            heure: "12h03"),
        card(
            context: context,
            imgLink: 'assets/img/avatar.jpg',
            title: "Pablo Picaso",
            email: "jackberthe009@gmail.com",
            date: "25 octobre 2023",
            heure: "12h03")
      ]))),
    );
  }
}
