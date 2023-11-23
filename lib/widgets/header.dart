import 'package:flutter/material.dart';
import 'package:pro_cv/utils/constants.dart';

header({required String title, required String imgLink}) {
  return Column(
    children: [
      Container(
        height: 80,
        margin: EdgeInsets.only(top: 30, left: 14, right: 14),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 8, color: Colors.grey.shade600, spreadRadius: 1)
            ],
            borderRadius: BorderRadius.all(Radius.circular(45))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/img/avatar.jpg'),
              radius: 32,
            ),
            Text(
              "Pablo Picasso",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 15),
            ),
            Image.asset(
              "assets/img/bell.png",
              height: 48,
              width: 48,
            ),
          ],
        ),
      ),
      // header2(title, imgLink)
    ],
  );
}

header2(title, imgLink) {
  return Stack(
    children: [
      Container(
        height: 80,
        margin: EdgeInsets.only(top: 85, left: 14, right: 14),
        decoration: BoxDecoration(
            color: myPurple,
            borderRadius: BorderRadius.all(Radius.circular(45))),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              )
            ],
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 18),
        alignment: Alignment(0.6, 0.0),
        child: Image.asset(
          imgLink,
          height: 180,
          width: 180,
        ),
      ),
    ],
  );
}
