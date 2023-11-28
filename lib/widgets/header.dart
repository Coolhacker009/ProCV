import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pro_cv/utils/constants.dart';
import 'package:provider/provider.dart';

import '../app_state.dart';

class Name extends StatefulWidget {
  const Name({super.key});

  String get name => '';

  set name(String name) {
    name = name;
  }

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  String name = "";
  String email = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user != null) {
        setState(() {
          name = user.displayName!;
          email = user.email!;
          widget.name = name;
        });
        print(user.displayName);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text("$widget.name",
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w600, fontSize: 15));
  }
}

header(
    {required String title,
    required String imgLink,
    required BuildContext context}) {
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
              backgroundImage: AssetImage('assets/img/utilisateur.png'),
              radius: 32,
            ),
            Text(
              Provider.of<AppState>(context, listen: false).name,
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
