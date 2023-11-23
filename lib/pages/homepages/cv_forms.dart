import 'package:flutter/material.dart';
import 'package:pro_cv/pages/Cv_forms/MyResumePage.dart';
import 'package:pro_cv/pages/Cv_forms/centre_interet.dart';
import 'package:pro_cv/pages/Cv_forms/competences.dart';
import 'package:pro_cv/pages/Cv_forms/education.dart';
import 'package:pro_cv/pages/Cv_forms/exp_pro.dart';
import 'package:pro_cv/pages/Cv_forms/info_perso.dart';
import 'package:pro_cv/pages/Cv_forms/langues.dart';
import 'package:pro_cv/pages/Cv_forms/obj_perso.dart';
import 'package:pro_cv/pages/home.dart';
import 'package:pro_cv/pages/homepages/models_cv.dart';
import 'package:pro_cv/utils/constants.dart';
import 'package:pro_cv/widgets/card.dart';
import 'home.dart';

class Cv_forms extends StatefulWidget {
  const Cv_forms({super.key});

  @override
  State<Cv_forms> createState() => _Cv_formsState();
}

class _Cv_formsState extends State<Cv_forms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.chevron_left,
                      color: myPurple,
                      size: 50,
                    ),
                  ),
                  onTap: () {
                    var change;
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) => ModelsCVTap()));
                  },
                ),
                Container(
                  margin: EdgeInsets.only(right: 30),
                  child: TextButton(
                      child: Text("Prévisualiser",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: myPurple)),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(15)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(myPurple),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      side: BorderSide(color: myPurple)))),
                      onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyResumePage()))
                          }),
                ),
                Container(
                  child: TextButton(
                      child: Padding(
                        padding: EdgeInsets.only(right: 10, left: 10),
                        child: Text("Enregistrer",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                      ),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(15)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(myPurple),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(myPurple),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      side: BorderSide(
                                        color: myPurple,
                                      )))),
                      onPressed: () => {}),
                ),
              ],
            ),
            GestureDetector(
              child: Container(
                  margin:
                      EdgeInsets.only(bottom: 12, right: 14, left: 14, top: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 2,
                          color: Colors.grey.shade600,
                          spreadRadius: 1)
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(23),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.person,
                          color: myPurple,
                          size: 33,
                        ),
                        Text(
                          "Informations personnelles",
                          style: TextStyle(fontSize: 16),
                        ),
                        Icon(
                          Icons.edit,
                          color: myPurple,
                          size: 28,
                        )
                      ],
                    ),
                  )),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Info_perso()));
              },
            ),
            GestureDetector(
              child: Container(
                  margin: EdgeInsets.only(bottom: 12, right: 14, left: 14),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            color: Colors.grey.shade600,
                            spreadRadius: 1)
                      ],
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: EdgeInsets.all(23),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.track_changes_rounded,
                          color: myPurple,
                          size: 33,
                        ),
                        Text(
                          "Objectif",
                          style: TextStyle(fontSize: 16),
                        ),
                        Icon(
                          Icons.edit,
                          color: myPurple,
                          size: 28,
                        )
                      ],
                    ),
                  )),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Obj_perso()));
              },
            ),
            GestureDetector(
              child: Container(
                  margin: EdgeInsets.only(bottom: 12, right: 14, left: 14),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            color: Colors.grey.shade600,
                            spreadRadius: 1)
                      ],
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: EdgeInsets.all(23),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.work,
                          color: myPurple,
                          size: 33,
                        ),
                        Text(
                          "Expériences professionnelles",
                          style: TextStyle(fontSize: 16),
                        ),
                        Icon(
                          Icons.edit,
                          color: myPurple,
                          size: 28,
                        )
                      ],
                    ),
                  )),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Exp_pro()));
              },
            ),
            GestureDetector(
              child: Container(
                  margin: EdgeInsets.only(bottom: 12, right: 14, left: 14),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            color: Colors.grey.shade600,
                            spreadRadius: 1)
                      ],
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: EdgeInsets.all(23),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.school,
                          color: myPurple,
                          size: 33,
                        ),
                        Text(
                          "Education",
                          style: TextStyle(fontSize: 16),
                        ),
                        Icon(
                          Icons.edit,
                          color: myPurple,
                          size: 28,
                        )
                      ],
                    ),
                  )),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Education()));
              },
            ),
            GestureDetector(
              child: Container(
                  margin: EdgeInsets.only(bottom: 12, right: 14, left: 14),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            color: Colors.grey.shade600,
                            spreadRadius: 1)
                      ],
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: EdgeInsets.all(23),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.translate_outlined,
                          color: myPurple,
                          size: 33,
                        ),
                        Text(
                          "Langues",
                          style: TextStyle(fontSize: 16),
                        ),
                        Icon(
                          Icons.edit,
                          color: myPurple,
                          size: 28,
                        )
                      ],
                    ),
                  )),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Langues()));
              },
            ),
            GestureDetector(
              child: Container(
                  margin: EdgeInsets.only(bottom: 12, right: 14, left: 14),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            color: Colors.grey.shade600,
                            spreadRadius: 1)
                      ],
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: EdgeInsets.all(23),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.settings_suggest_rounded,
                          color: myPurple,
                          size: 33,
                        ),
                        Text(
                          "Compétences",
                          style: TextStyle(fontSize: 16),
                        ),
                        Icon(
                          Icons.edit,
                          color: myPurple,
                          size: 28,
                        )
                      ],
                    ),
                  )),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Competences()));
              },
            ),
            GestureDetector(
              child: Container(
                  margin: EdgeInsets.only(bottom: 12, right: 14, left: 14),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            color: Colors.grey.shade600,
                            spreadRadius: 1)
                      ],
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: EdgeInsets.all(23),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.gamepad_rounded,
                          color: myPurple,
                          size: 33,
                        ),
                        Text(
                          "Centre d’intêrets",
                          style: TextStyle(fontSize: 16),
                        ),
                        Icon(
                          Icons.edit,
                          color: myPurple,
                          size: 28,
                        )
                      ],
                    ),
                  )),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Centre_interet()));
              },
            )
          ],
        ),
      ),
    );
  }
}
