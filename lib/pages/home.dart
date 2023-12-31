import 'package:flutter/material.dart';
import 'package:pro_cv/pages/homepages/brouillons.dart';
import 'package:pro_cv/pages/homepages/creations.dart';
import 'package:pro_cv/pages/homepages/exported_page.dart';
import 'package:pro_cv/pages/homepages/home.dart';
import 'package:pro_cv/pages/homepages/models_cv.dart';
import 'package:pro_cv/pages/homepages/notifications.dart';
import 'package:pro_cv/pages/homepages/profile.dart';
import 'package:pro_cv/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> pages = [
    // HomeTap(init: change()),
    // ModelsCVTap(),
    // CreationsTap(),
    // BrouillonTap(),
    // ProfileTap(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pages = [
      HomeTap(init: change),
      ModelsCVTap(),
      CreationsTap(),
      BrouillonTap(),
      ProfileTap(),
      ExportedPage()
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
      ),
      body: pages[currentIndex],
      bottomNavigationBar: bottomNavigationBar(),
    );
  }

  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
        icon: Icon(Icons.home), label: "Acceuil", backgroundColor: myPurple),
    BottomNavigationBarItem(
        icon: Icon(Icons.file_copy),
        label: "Modèles",
        backgroundColor: Colors.amber),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.folder_open,
        ),
        label: "Créations"),
    BottomNavigationBarItem(
        icon: Icon(Icons.edit_document), label: "Brouillons"),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
  ];

  change(index) {
    setState(() {
      currentIndex = index;
    });
  }

  bottomNavigationBar() {
    if (currentIndex > 4) {
      currentIndex = 1;
    }
    // initBottomNavigationBarItem(_currenIndex);
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                spreadRadius: 5,
                blurRadius: 5,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            color: Colors.white),
        child: Material(
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            //  fixedColor: primaryF,

            backgroundColor: Colors.transparent,
            elevation: 0,
            onTap: (index) {
              setState(() {
                currentIndex = index;
                // print(index);
              });
            },
            // unselectedItemColor: SecondaryText,
            items: items,
            selectedItemColor: myPurple,
            iconSize: 30,
            type: BottomNavigationBarType.fixed,
          ),
        ),
      ),
    );
  }
}
