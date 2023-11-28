import 'package:flutter/material.dart';
import 'package:pro_cv/delayed_animation.dart';
import 'package:pro_cv/widgets/card.dart';
import 'package:pro_cv/widgets/header.dart';

class ExportedPage extends StatefulWidget {
  const ExportedPage({super.key});

  @override
  State<ExportedPage> createState() => _ExportedPageState();
}

class _ExportedPageState extends State<ExportedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0.0,
        ),
        body: Center(
            child: Column(children: [
          header(
              title: "Exportes",
              imgLink: "assets/img/pdf2.png",
              context: context),
          SizedBox(
            height: 20,
          ),
          DelayedAnimation(
            delay: 2,
            child: header2('Exportes', "assets/img/pdf2.png"),
          ),
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
        ])));
  }
}
