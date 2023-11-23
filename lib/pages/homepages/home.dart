import 'package:flutter/material.dart';
import 'package:pro_cv/delayed_animation.dart';
import 'package:pro_cv/pages/homepages/creations.dart';
import 'package:pro_cv/pages/homepages/exported_page.dart';
import 'package:pro_cv/pages/homepages/models_cv.dart';
import 'package:pro_cv/utils/constants.dart';
import 'package:pro_cv/widgets/header.dart';

class HomeTap extends StatefulWidget {
  Function init;
  HomeTap({super.key, required this.init});

  @override
  State<HomeTap> createState() => _HomeTapState();
}

class _HomeTapState extends State<HomeTap> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        header(title: "Accueil", imgLink: "assets/img/home.png"),
        SizedBox(
          height: 20,
        ),
        DelayedAnimation(
          delay: 2,
          child: header2('Accueil', "assets/img/home.png"),
        ),
        Expanded(
          child: Wrap(
            spacing: 10,
            children: [
              // for (var i = 0; i < 4; i++)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.22,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        GestureDetector(
                          child: Image.asset("assets/img/img1.png"),
                          onTap: () {
                            setState(() {
                              widget.init(1);
                            });
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => ModelsCVTap()));
                          },
                        ),
                        Text(
                          "Modèles CV",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.22,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        GestureDetector(
                          child: Image.asset("assets/img/folder.png"),
                          onTap: () {
                            setState(() {
                              widget.init(2);
                            });
                          },
                        ),
                        Text("Mes créations",
                            style: TextStyle(fontWeight: FontWeight.w600))
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.22,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        GestureDetector(
                          child: Image.asset("assets/img/notepad.png"),
                          onTap: () {
                            setState(() {
                              widget.init(3);
                            });
                          },
                        ),
                        Text("Mes brouillons",
                            style: TextStyle(fontWeight: FontWeight.w600))
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.22,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                        //color: Colors.amber,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        GestureDetector(
                          child: Image.asset("assets/img/img3.png"),
                          onTap: () {
                            // setState(() {
                            //   widget.init(5);
                            // });
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ExportedPage()));
                          },
                        ),
                        Text("Fichiers Exportés",
                            style: TextStyle(fontWeight: FontWeight.w600))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          // child: GridView.count(
          //   shrinkWrap: true,
          //   crossAxisCount: 2,
          //   children: [
          //     Container(
          //       color: Colors.amber,
          //       height: 45,
          //     ),
          //   ],
          // ),
        )
      ],
    ));
  }
}
