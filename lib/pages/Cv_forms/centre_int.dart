import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pro_cv/delayed_animation.dart';
import 'package:pro_cv/pages/Cv_forms/ajout_exp.dart';
import 'package:pro_cv/pages/Cv_forms/exp_pro.dart';
import 'package:pro_cv/pages/Cv_forms/langues.dart';
import 'package:pro_cv/pages/Cv_forms/modif_exp.dart';
import 'package:pro_cv/pages/home.dart';
import 'package:pro_cv/pages/homepages/cv_forms.dart';
import 'package:pro_cv/pages/homepages/models_cv.dart';
import 'package:pro_cv/utils/constants.dart';
import 'package:pro_cv/widgets/card.dart';
import 'package:pro_cv/pages/homepages/models_cv.dart';

class Centre_int extends StatefulWidget {
  const Centre_int({super.key});

  @override
  State<Centre_int> createState() => _Centre_intState();
}

class _Centre_intState extends State<Centre_int> {
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
                    "Centre d'intérêt",
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
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          'Français',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          'Niveau',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                )),
              )),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 2),
                child: Text(
                  'Niveau',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 2, bottom: 15),
                child: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: RatingBar.builder(
                              initialRating: 0,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding: EdgeInsets.symmetric(horizontal: 4),
                              itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: myPurple,
                                    size: 10,
                                  ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              }),
                        ),
                      ]),
                ),
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.only(top: 10),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Text("Enregistrer",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
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
                                    borderRadius: BorderRadius.circular(20.0),
                                    side: BorderSide(color: myPurple)))),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Exp_pro()));
                    }),
              )),
        ],
      ),
    );
  }
}
