import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pro_cv/delayed_animation.dart';
import 'package:pro_cv/pages/Cv_forms/image_picker.dart';
import 'package:pro_cv/pages/home.dart';
import 'package:pro_cv/pages/signup.dart';
import 'package:pro_cv/utils/constants.dart';

class Obj_perso extends StatefulWidget {
  const Obj_perso({super.key});

  @override
  State<Obj_perso> createState() => _Obj_persoState();
}

class _Obj_persoState extends State<Obj_perso> {
  @override
  final _formKey = GlobalKey<FormState>();
  File? selectedImage;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 25, left: 15),
                        child: Icon(
                          Icons.chevron_left,
                          color: myPurple,
                          size: 40,
                        ),
                      ),
                      Text(
                        "Objectif",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: myPurple),
                      ),
                    ],
                  )),
              DelayedAnimation(
                  delay: 150,
                  child: Container(
                    margin: EdgeInsets.all(22),
                    child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    child: TextFormField(
                                      maxLines: 4,
                                      decoration: InputDecoration(
                                          labelText: "Présentation",
                                          hintText: "Entrez votre présentation",
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular((12))))),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Veillez remplir ce champ";
                                        }
                                        return null;
                                      },
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      keyboardType: TextInputType.emailAddress,
                                    ),
                                  ),
                                  // SizedBox(
                                  //   height: 500,
                                  // ),
                                  Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: TextButton(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20, right: 20),
                                              child: Text("Enregistrer",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white)),
                                            ),
                                            style: ButtonStyle(
                                                padding: MaterialStateProperty.all<EdgeInsets>(
                                                    EdgeInsets.all(15)),
                                                foregroundColor:
                                                    MaterialStateProperty.all<Color>(
                                                        myPurple),
                                                backgroundColor:
                                                    MaterialStateProperty.all<Color>(
                                                        myPurple),
                                                shape: MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(20.0),
                                                        side: BorderSide(color: myPurple)))),
                                            onPressed: () {
                                              if (_formKey.currentState!
                                                  .validate()) {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            HomeScreen()));
                                              }
                                            }),
                                      )),
                                ],
                              ),
                            )
                          ],
                        )),
                  )),
            ],
          ),
        ));
  }
}
