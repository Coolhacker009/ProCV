import 'package:flutter/material.dart';
import 'package:pro_cv/pages/Cv_forms/Ajout_int.dart';
import 'package:pro_cv/pages/Cv_forms/ajout_exp.dart';
import 'package:pro_cv/pages/Cv_forms/centre_interet.dart';
import 'package:pro_cv/pages/Cv_forms/competences.dart';
import 'package:pro_cv/pages/Cv_forms/education.dart';
import 'package:pro_cv/pages/Cv_forms/exp_pro.dart';
import 'package:pro_cv/pages/Cv_forms/info_perso.dart';
import 'package:pro_cv/pages/Cv_forms/langues.dart';
import 'package:pro_cv/pages/Cv_forms/modif_exp.dart';
import 'package:pro_cv/pages/Cv_forms/modif_interet.dart';
import 'package:pro_cv/pages/Cv_forms/obj_perso.dart';
import 'package:pro_cv/pages/homepages/cv_forms.dart';
import 'package:pro_cv/utils/constants.dart';
import 'package:pro_cv/widgets/card.dart';

class Centre_interet extends StatefulWidget {
  const Centre_interet({super.key});

  @override
  State<Centre_interet> createState() => _Centre_interetState();
}

class _Centre_interetState extends State<Centre_interet> {
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
                      child: GestureDetector(
                        child: Icon(
                          Icons.chevron_left,
                          color: myPurple,
                          size: 40,
                        ),
                        onTap: () {
                          Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Cv_forms()));
                        },
                      )),
                  Text(
                    "Centre d'intérêt",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: myPurple),
                  ),
                ],
              )),
          Container(
            child: Expanded(
                child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) => Container(
                  child: Container(
                margin:
                    EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 1),
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
                        'Peinture',
                        style: TextStyle(fontSize: 18),
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
                                      child: GestureDetector(
                                        child: Icon(
                                          Icons.edit,
                                          size: 30,
                                          color: myPurple,
                                        ),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Modif_interet()));
                                        },
                                      ),
                                    ),
                                    Icon(
                                      Icons.delete,
                                      size: 30,
                                      color: myPurple,
                                    )
                                  ],
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
              )),
            )),
          ),
          Container(
              margin: EdgeInsets.only(top: 10, bottom: 30),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Text("Ajouter intérêt",
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Ajout_int()));
                    }),
              )),
        ],
      ),
    );
  }
}
