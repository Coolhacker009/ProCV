import 'package:flutter/material.dart';
import 'package:pro_cv/widgets/card.dart';
import 'package:pro_cv/widgets/header.dart';

class BrouillonTap extends StatefulWidget {
  const BrouillonTap({super.key});

  @override
  State<BrouillonTap> createState() => _BrouillonTapState();
}

class _BrouillonTapState extends State<BrouillonTap> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Center(
            child: Column(children: [
      header(title: "Brouillons", imgLink: "assets/img/notepad.png"),
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
