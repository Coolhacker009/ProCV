import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pro_cv/Services/dataService.dart';
import 'package:pro_cv/delayed_animation.dart';
import 'package:pro_cv/pages/Cv_forms/image_picker.dart';
import 'package:pro_cv/pages/home.dart';
import 'package:pro_cv/pages/homepages/cv_forms.dart';
import 'package:pro_cv/pages/signup.dart';
import 'package:pro_cv/utils/constants.dart';
import 'package:provider/provider.dart';

class Info_perso extends StatefulWidget {
  const Info_perso({super.key});

  @override
  State<Info_perso> createState() => _Info_persoState();
}

class _Info_persoState extends State<Info_perso> {
  final _formKey = GlobalKey<FormState>();
  File? selectedImage;
  TextEditingController nomController = TextEditingController();
  TextEditingController professionController = TextEditingController();
  TextEditingController adresseController = TextEditingController();
  TextEditingController telController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController preController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nomController.text =
        (Provider.of<DataService>(context, listen: false).infoProfil.nom !=
                null)
            ? Provider.of<DataService>(context, listen: false).infoProfil.nom!
            : '';
    professionController.text =
        (Provider.of<DataService>(context, listen: false)
                    .infoProfil
                    .profession !=
                null)
            ? Provider.of<DataService>(context, listen: false)
                .infoProfil
                .profession!
            : '';
    adresseController.text = (Provider.of<DataService>(context, listen: false)
                .infoProfil
                .adresse !=
            null)
        ? Provider.of<DataService>(context, listen: false).infoProfil.adresse!
        : '';
    telController.text =
        (Provider.of<DataService>(context, listen: false).infoProfil.tel !=
                null)
            ? Provider.of<DataService>(context, listen: false).infoProfil.tel!
            : '';
    mailController.text =
        (Provider.of<DataService>(context, listen: false).infoProfil.email !=
                null)
            ? Provider.of<DataService>(context, listen: false).infoProfil.email!
            : '';

    preController.text = (Provider.of<DataService>(context, listen: false)
                .infoProfil
                .presentation !=
            null)
        ? Provider.of<DataService>(context, listen: false)
            .infoProfil
            .presentation!
        : '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 25, left: 15),
                        child: GestureDetector(
                          child: Icon(
                            Icons.chevron_left,
                            color: myPurple,
                            size: 40,
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Text(
                        "Informations personelles",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: myPurple),
                      ),
                    ],
                  )),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: selectedImage == null
                        ? Image.asset(
                            "assets/img/profile.png",
                            height: 150,
                            width: 150,
                          )
                        : Image.file(
                            selectedImage!,
                            height: 150,
                            width: 150,
                          ),
                    onTap: () async {
                      selectedImage = await ImageCapture.pickImage();
                      setState(
                          () {}); // Assurez-vous d'appeler setState pour déclencher le rebuild du widget
                    },
                  ),
                  Text("Photo (Optionnel)"),
                ],
              ),
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
                                      controller: nomController,
                                      decoration: InputDecoration(
                                          labelText: "Nom",
                                          hintText: "Entrez votre nom",
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
                                  Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    child: TextFormField(
                                      controller: professionController,
                                      decoration: InputDecoration(
                                          labelText: "Profession",
                                          hintText: "Entrez votre profession",
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
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    child: TextFormField(
                                      controller: adresseController,
                                      decoration: InputDecoration(
                                          labelText: "Adresse",
                                          hintText: "Entrez votre adresse",
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
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    child: TextFormField(
                                      controller: telController,
                                      decoration: InputDecoration(
                                          labelText: "Téléphone",
                                          hintText: "Entrez votre téléphone",
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
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    child: TextFormField(
                                      controller: mailController,
                                      decoration: InputDecoration(
                                          labelText: "Email",
                                          hintText: "Entrez votre email",
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
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    child: TextFormField(
                                      controller: preController,
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
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: TextButton(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, right: 20),
                                          child: Text("Enregistrer",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white)),
                                        ),
                                        style: ButtonStyle(
                                            padding:
                                                MaterialStateProperty.all<EdgeInsets>(
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
                                            Provider.of<DataService>(context,
                                                    listen: false)
                                                .infoProfil
                                                .nom = nomController.text;
                                            Provider.of<DataService>(context,
                                                        listen: false)
                                                    .infoProfil
                                                    .profession =
                                                professionController.text;
                                            Provider.of<DataService>(context,
                                                        listen: false)
                                                    .infoProfil
                                                    .adresse =
                                                adresseController.text;
                                            Provider.of<DataService>(context,
                                                    listen: false)
                                                .infoProfil
                                                .tel = telController.text;
                                            Provider.of<DataService>(context,
                                                    listen: false)
                                                .infoProfil
                                                .email = mailController.text;

                                            Provider.of<DataService>(context,
                                                        listen: false)
                                                    .infoProfil
                                                    .presentation =
                                                preController.text;
                                            Navigator.pop(context);
                                          }
                                        }),
                                  ),
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
