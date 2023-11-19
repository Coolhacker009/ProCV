import 'package:flutter/material.dart';
import 'package:pro_cv/utils/constants.dart';
import 'package:pro_cv/widgets/card.dart';

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
                Container(
                  margin: EdgeInsets.only(right: 65),
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
                      onPressed: () => {}),
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
            Container(
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
            Container(
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
            Container(
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
            Container(
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
            Container(
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
            Container(
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
            Container(
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
          ],
        ),
      ),
    );
  }
}
