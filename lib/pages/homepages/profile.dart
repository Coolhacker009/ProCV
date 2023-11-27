import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pro_cv/delayed_animation.dart';
import 'package:pro_cv/pages/home.dart';
import 'package:pro_cv/pages/login.dart';
import 'package:pro_cv/utils/constants.dart';
import 'package:pro_cv/widgets/custom_buttom.dart';

class ProfileTap extends StatefulWidget {
  ProfileTap({super.key});

  @override
  State<ProfileTap> createState() => _ProfileTapState();
}

class _ProfileTapState extends State<ProfileTap> {
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
        });
        print(user.displayName);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        child: Center(
            child: Column(children: [
          Container(
            height: 60,
            margin: EdgeInsets.only(top: 40, left: 14, right: 14),
            decoration: BoxDecoration(
                color: myPurple,
                borderRadius: BorderRadius.all(Radius.circular(45))),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mon profile",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: Icon(
                        Icons.person,
                        color: myPurple,
                      ))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          DelayedAnimation(
            delay: 100,
            child: SizedBox(
              height: MediaQuery.of(context).size.width * 0.4,
              width: MediaQuery.of(context).size.width * 0.4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    (MediaQuery.of(context).size.width * 0.4) * 0.5),
                child: Image.asset("assets/img/avatar.jpg"),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 29),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            email,
            style: TextStyle(
                decoration: TextDecoration.underline, color: Color(0xFF554E4E)),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Modifer le profil",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: myPurple),
          ),
          Expanded(child: Image.asset("assets/img/logo.png")),
          Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: CustomButton(
                  onTap: () async {
                    await FirebaseAuth.instance.signOut();
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                        (route) => false);
                  },
                  color: Colors.white,
                  colorBorder: myPurple,
                  textColor: myPurple,
                  text: "Deconnexion"))
        ])));
  }
}
