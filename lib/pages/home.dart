import 'package:flutter/material.dart';
import 'package:pro_cv/main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0.0,
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                height: 80,
                margin: EdgeInsets.only(top: 30, left: 14, right: 14),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 8,
                          color: Colors.grey.shade600,
                          spreadRadius: 1)
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(45))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/img/avatar.jpg'),
                      radius: 32,
                    ),
                    Text(
                      "Pablo Picasso",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    ),
                    Image.asset(
                      "assets/img/bell.png",
                      height: 48,
                      width: 48,
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    height: 80,
                    margin: EdgeInsets.only(top: 85, left: 14, right: 14),
                    decoration: BoxDecoration(
                        color: myPurple,
                        borderRadius: BorderRadius.all(Radius.circular(45))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 18),
                    alignment: Alignment(0.6, 0.0),
                    child: Image.asset(
                      "assets/img/home.png",
                      height: 180,
                      width: 180,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                children: [
                  Container(
                    color: Colors.amber,
                    height: 45,
                  ),
                ],
              ))
            ],
          ),
        ));
  }
}
