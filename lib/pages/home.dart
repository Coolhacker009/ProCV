import 'package:flutter/material.dart';
import 'package:pro_cv/pages/homepages/brouillons.dart';
import 'package:pro_cv/pages/homepages/creations.dart';
import 'package:pro_cv/pages/homepages/home.dart';
import 'package:pro_cv/pages/homepages/models_cv.dart';
import 'package:pro_cv/pages/homepages/notifications.dart';
import 'package:pro_cv/pages/homepages/profile.dart';

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
    NotificationsTap() // index 5
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
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
    const BottomNavigationBarItem(
        icon: Icon(Icons.file_copy), label: "", backgroundColor: Colors.amber),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.folder_open,
        ),
        label: ""),
    const BottomNavigationBarItem(icon: Icon(Icons.edit_document), label: ""),
    const BottomNavigationBarItem(icon: Icon(Icons.person), label: "")
  ];

  bottomNavigationBar() {
    // initBottomNavigationBarItem(_currenIndex);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            color: Colors.white),
        child: Material(
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          child: BottomNavigationBar(
            currentIndex: 0,
            //  fixedColor: primaryF,
            showUnselectedLabels: false,
            showSelectedLabels: false,
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

            type: BottomNavigationBarType.fixed,
          ),
        ),
      ),
    );
  }
}
