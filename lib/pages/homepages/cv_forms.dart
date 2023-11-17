import 'package:flutter/material.dart';

class Cv_forms extends StatefulWidget {
  const Cv_forms({super.key});

  @override
  State<Cv_forms> createState() => _Cv_formsState();
}

class _Cv_formsState extends State<Cv_forms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
      ),
      body: Center(
        child: Container(
          child: Row(
            children: [
              ElevatedButton(onPressed: () {}, child: Text('Previsualiser'))
            ],
          ),
        ),
      ),
    );
  }
}
