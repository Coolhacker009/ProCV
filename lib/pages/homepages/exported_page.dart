import 'package:flutter/material.dart';
import 'package:pro_cv/widgets/card.dart';
import 'package:pro_cv/widgets/header.dart';

class ExportedPage extends StatefulWidget {
  const ExportedPage({super.key, required Function(dynamic index) init});

  @override
  State<ExportedPage> createState() => _ExportedPageState();
}

class _ExportedPageState extends State<ExportedPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Center(
            child: Column(children: [
      header(title: "Exportés", imgLink: "assets/img/img1.png"),
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
