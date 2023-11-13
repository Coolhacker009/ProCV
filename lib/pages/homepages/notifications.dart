import 'package:flutter/material.dart';
import 'package:pro_cv/widgets/card.dart';
import 'package:pro_cv/widgets/header.dart';

class NotificationsTap extends StatefulWidget {
  const NotificationsTap({super.key});

  @override
  State<NotificationsTap> createState() => _NotificationsTapState();
}

class _NotificationsTapState extends State<NotificationsTap> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Center(
            child: Column(children: [
      header2("Notifications", "assets/img/bell.png"),
      cardNotification(
          context: context,
          imgLink: 'assets/img/bell.png',
          title: "2 Nouveaux templates informatiques ont été ajoutés",
          date: "25 octobre 2023",
          heure: "12h03"),
      cardNotification(
          context: context,
          imgLink: 'assets/img/bell.png',
          title: "2 Nouveaux templates informatiques ont été ajoutés",
          date: "25 octobre 2023",
          heure: "12h03")
    ])));
  }
}

      // Stack(
      //   children: [
      //     Container(
      //       height: 80,
      //       margin: EdgeInsets.only(top: 85, left: 14, right: 14),
      //       decoration: BoxDecoration(
      //           color: myPurple,
      //           borderRadius: BorderRadius.all(Radius.circular(45))),
      //       child: Padding(
      //         padding: const EdgeInsets.all(10),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.start,
      //           children: [
      //             Text(
      //               title,
      //               style: TextStyle(
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.w600,
      //                   color: Colors.white),
      //             )
      //           ],
      //         ),
      //       ),
      //     ),
      //     Container(
      //       margin: EdgeInsets.only(top: 18),
      //       alignment: Alignment(0.6, 0.0),
      //       child: Image.asset(
      //         imgLink,
      //         height: 180,
      //         width: 180,
      //       ),
      //     ),
      //   ],
      // ),