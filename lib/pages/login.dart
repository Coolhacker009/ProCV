import 'package:flutter/material.dart';
import 'package:pro_cv/delayed_animation.dart';
import 'package:pro_cv/main.dart';
import 'package:pro_cv/pages/home.dart';
import 'package:pro_cv/pages/signup.dart';

final _formKey = GlobalKey<FormState>();

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                  "Connexion",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: myPurple),
                ),
              ),
              DelayedAnimation(
                  delay: 300,
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
                                          labelText: "Email",
                                          hintText: "Entrez votre prénom",
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular((28))))),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          labelText: "Mot de passe",
                                          hintText: "Entrez votre nom",
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular((28))))),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: TextButton(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, right: 20),
                                          child: Text("Connexion",
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
                                        onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()))}),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 2, top: 10),
                                    child: Text("Vous n'avez de compte ?"),
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      margin: EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        "Créez en ici ?",
                                        style: TextStyle(
                                            color: myPurple,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Signup()));
                                    },
                                  )
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
