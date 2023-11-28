import 'package:flutter/material.dart';
import 'package:pro_cv/delayed_animation.dart';
import 'package:pro_cv/pages/homepages/cv_forms.dart';
import 'package:pro_cv/utils/constants.dart';
import 'package:pro_cv/widgets/header.dart';

class ModelsCVTap extends StatefulWidget {
  ModelsCVTap({super.key});

  @override
  State<ModelsCVTap> createState() => _ModelsCVTapState();
}

class _ModelsCVTapState extends State<ModelsCVTap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              header(
                  title: "Modèles",
                  imgLink: "assets/img/home.png",
                  context: context),
              SizedBox(
                height: 20,
              ),
              DelayedAnimation(
                delay: 2,
                child: header2('Modèles', "assets/img/img1.png"),
              ),
              Material(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  // height: 80,
                  //argin: EdgeInsets.only(top: 85, left: 14, right: 14),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(45))),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Catégories",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: myPurple,
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                              Text(
                                "Tout",
                                style: TextStyle(color: Colors.white),
                              ),
                              Icon(
                                Icons.chevron_left,
                                color: Colors.white,
                              )
                            ]),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      child: GestureDetector(
                        child: Image.asset(
                          "assets/img/img2.png",
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 220,
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Cv_forms(),
                            ),
                          );
                        },
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 2,
                                color: Colors.grey.shade600,
                                spreadRadius: 0)
                          ],
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      child: Image.asset(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 220,
                          "assets/img/img2.png"),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 2,
                                color: Colors.grey.shade600,
                                spreadRadius: 0)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      child: Image.asset(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 220,
                          "assets/img/img2.png"),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 2,
                                color: Colors.grey.shade600,
                                spreadRadius: 0)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      child: Image.asset(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 220,
                          "assets/img/img2.png"),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 2,
                                color: Colors.grey.shade600,
                                spreadRadius: 0)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
