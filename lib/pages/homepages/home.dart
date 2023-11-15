import 'package:flutter/material.dart';
import 'package:pro_cv/delayed_animation.dart';
import 'package:pro_cv/pages/homepages/models_cv.dart';
import 'package:pro_cv/widgets/header.dart';

class HomeTap extends StatefulWidget {
  const HomeTap({super.key});

  @override
  State<HomeTap> createState() => _HomeTapState();
}

class _HomeTapState extends State<HomeTap> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        DelayedAnimation(
            delay: 5,
            child: header(title: "Accueil", imgLink: "assets/img/home.png")),
        SizedBox(
          height: 20,
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ModelsCVTap()));
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
                        Image.asset("assets/img/folder.png"),
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
                        Image.asset("assets/img/notepad.png"),
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
                        Image.asset("assets/img/img3.png"),
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
