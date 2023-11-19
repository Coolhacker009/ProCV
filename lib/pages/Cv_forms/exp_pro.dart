import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro_cv/delayed_animation.dart';
import 'package:pro_cv/utils/constants.dart';
import 'package:pro_cv/widgets/card.dart';

class Exp_pro extends StatefulWidget {
  const Exp_pro({super.key});

  @override
  State<Exp_pro> createState() => _Exp_proState();
}

class _Exp_proState extends State<Exp_pro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 18, left: 15),
                        child: Icon(
                          Icons.chevron_left,
                          color: myPurple,
                          size: 40,
                        ),
                      ),
                      Text(
                        "Expériences professionnelles",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: myPurple),
                      ),
                    ],
                  )),
              Container(
                child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, index) => Card(
                          child: ListTile(
                            title: Text('Pixel media'),
                            subtitle: Text('Designer'),
                            trailing: const Icon(Icons.edit),
                          ),
                        )),
              )
            ],
          ),
        ));
  }
}
