import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro_cv/Services/dataService.dart';
import 'package:pro_cv/delayed_animation.dart';
import 'package:pro_cv/pages/Cv_forms/ajout_exp.dart';
import 'package:pro_cv/pages/Cv_forms/modif_exp.dart';
import 'package:pro_cv/pages/home.dart';
import 'package:pro_cv/pages/homepages/cv_forms.dart';
import 'package:pro_cv/pages/homepages/models_cv.dart';
import 'package:pro_cv/utils/constants.dart';
import 'package:pro_cv/widgets/card.dart';
import 'package:pro_cv/pages/homepages/models_cv.dart';
import 'package:provider/provider.dart';

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
                      child: GestureDetector(
                        child: Icon(
                          Icons.chevron_left,
                          color: myPurple,
                          size: 40,
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      )),
                  Text(
                    "Expériences professionnelles",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: myPurple),
                  ),
                ],
              )),
          Container(
            child: Expanded(child: Consumer<DataService>(
              builder: (context, dataService, child) {
                return ListView.builder(
                  itemCount: dataService.expreiences.length,
                  itemBuilder: (context, index) => Container(
                      child: Container(
                    margin: EdgeInsets.only(
                        top: 20, left: 10, right: 10, bottom: 1),
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
                            Provider.of<DataService>(context, listen: false)
                                .expreiences[index]
                                .experienceData!
                                .experienceLocation,
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            Provider.of<DataService>(context, listen: false)
                                .expreiences[index]
                                .experienceData!
                                .experienceTitle,
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 6, bottom: 20),
                          child: Container(
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                                          Modif_exp()));
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
                                  Container(
                                    margin: EdgeInsets.only(right: 20),
                                    child: Text(Provider.of<DataService>(
                                            context,
                                            listen: false)
                                        .expreiences[index]
                                        .experienceData!
                                        .experiencePeriod),
                                  )
                                ]),
                          ),
                        ),
                      ],
                    ),
                  )),
                );
              },
            )),
          ),
          Container(
              margin: EdgeInsets.only(top: 10, bottom: 30),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Text("Ajouter une expérience",
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
                          MaterialPageRoute(builder: (context) => Ajout_exp()));
                    }),
              )),
        ],
      ),
    );
  }
}
