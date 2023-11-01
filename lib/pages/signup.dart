import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                padding: EdgeInsets.only(top: 30),
                child: Center(
                  child: Image.asset(
                    "assets/img/logo.png",
                    height: 180,
                    width: 180,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(22),
                child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: "Prénom",
                              hintText: "Entrez votre prénom",
                              border: OutlineInputBorder()),
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: "Nom"),
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: "Nom"),
                        )
                      ],
                    )),
              ),
            ],
          ),
        ));
  }
}
