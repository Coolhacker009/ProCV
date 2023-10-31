import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
      title: new Text("Pablo Picasso"),
      leading: new Padding(
        padding: const EdgeInsets.all(8.0),
        child: new Material(
          shape: new CircleBorder(),
        ),
      ),
    ));
  }
}
