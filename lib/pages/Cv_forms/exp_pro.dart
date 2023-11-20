import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro_cv/delayed_animation.dart';
import 'package:pro_cv/pages/home.dart';
import 'package:pro_cv/utils/constants.dart';
import 'package:pro_cv/widgets/card.dart';

class Exp_pro extends StatefulWidget {
  const Exp_pro({super.key});

  @override
  State<Exp_pro> createState() => _Exp_proState();
}

class _Exp_proState extends State<Exp_pro> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
      ),
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 18, left: 15),
                    child: Icon(
                      Icons.chevron_left,
                      color: myPurple,
                      size: 40,
                    ),
                  ),
                  Text(
                    "Expériences professionnelles",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: myPurple),
                  ),
                ],
              )),
          Container(
            child: Expanded(
                child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) => Container(
                  child: Container(
                margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 6,
                          color: Colors.grey.shade600,
                          spreadRadius: 1)
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Pixel media 2.0',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Designer',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 6, bottom: 20),
                      child: Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(right: 12),
                                        child: Icon(
                                          Icons.edit,
                                          size: 30,
                                          color: myPurple,
                                        )),
                                    Icon(
                                      Icons.delete,
                                      size: 30,
                                      color: myPurple,
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 20),
                                child: Text('2013-2014'),
                              )
                            ]),
                      ),
                    ),
                  ],
                ),
              )),
            )),
          ),
          Container(
              margin: EdgeInsets.only(top: 10, bottom: 20),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Text("Ajoute une expérience",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: myPurple)),
                    ),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.all(15)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    side: BorderSide(color: myPurple)))),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      }
                    }),
              )),
        ],
      ),
    );
  }
}
