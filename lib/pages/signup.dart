import 'package:flutter/material.dart';
import 'package:pro_cv/delayed_animation.dart';
import 'package:pro_cv/pages/home.dart';
import 'package:pro_cv/pages/login.dart';
import 'package:pro_cv/utils/constants.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Veuillez entrer une adresse e-mail";
    }

    // Utilisez une expression régulière pour valider le format de l'e-mail
    bool isValid =
        RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(value);

    if (!isValid) {
      return "Veuillez entrer une adresse e-mail valide";
    }

    return null;
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 65),
                child: Center(
                  child: Image.asset(
                    "assets/img/logo.png",
                    height: 180,
                    width: 180,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "Inscription",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: myPurple),
                ),
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
                                      decoration: InputDecoration(
                                          labelText: "Prénom",
                                          hintText: "Entrez votre prénom",
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular((28))))),
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
                                      decoration: InputDecoration(
                                          labelText: "Nom",
                                          hintText: "Entrez votre nom",
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular((28))))),
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
                                      validator:
                                          validateEmail, // Utilisez la fonction de validation ici
                                      decoration: InputDecoration(
                                        labelText: "Email",
                                        hintText: "Entrez votre email",
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular((28))),
                                        ),
                                      ),
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    child: TextFormField(
                                      obscureText: true,
                                      enableSuggestions: false,
                                      autocorrect: false,
                                      decoration: InputDecoration(
                                          labelText: "Mot de passe",
                                          hintText: "Entrez votre mot de passe",
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular((28))))),
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
                                      obscureText: true,
                                      enableSuggestions: false,
                                      autocorrect: false,
                                      decoration: InputDecoration(
                                          labelText: "Mot de passe",
                                          hintText:
                                              "Confirmez votre mot de passe",
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular((28))))),
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
                                    margin: EdgeInsets.only(top: 10),
                                    child: TextButton(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, right: 20),
                                          child: Text("S'inscrire",
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
                                                        BorderRadius.circular(25.0),
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
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 2, top: 10),
                                    child: Text("Vous avez déja un compte ?"),
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      margin: EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        "Connectez-vous ici",
                                        style: TextStyle(
                                            color: myPurple,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.pop(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Login()));
                                    },
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
