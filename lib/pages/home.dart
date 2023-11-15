import 'package:flutter/material.dart';
import 'package:pro_cv/pages/homepages/brouillons.dart';
import 'package:pro_cv/pages/homepages/creations.dart';
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
  int _currentIndex = 0;
  List<Widget> pages = [
    HomeTap(),
    ModelsCVTap(),
    CreationsTap(),
    BrouillonTap(),
    ProfileTap(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
      ),
      body: pages[_currentIndex],
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
    BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
  ];

  bottomNavigationBar() {
    // initBottomNavigationBarItem(_currenIndex);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
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
            currentIndex: _currentIndex,
            //  fixedColor: primaryF,

            backgroundColor: Colors.transparent,
            elevation: 0,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
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
