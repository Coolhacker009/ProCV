import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_resume_template/flutter_resume_template.dart';
import 'package:pro_cv/Services/dataService.dart';
import 'package:pro_cv/delayed_animation.dart';
import 'package:pro_cv/pages/Cv_forms/exp_pro.dart';
import 'package:pro_cv/pages/home.dart';
import 'package:pro_cv/pages/model/educationModel.dart';
import 'package:pro_cv/utils/constants.dart';
import 'package:pro_cv/widgets/card.dart';
import 'package:provider/provider.dart';

class Ajout_education extends StatefulWidget {
  const Ajout_education({super.key, this.education});

  final Education? education;

  @override
  State<Ajout_education> createState() => _Ajout_educationState();
}

class _Ajout_educationState extends State<Ajout_education> {
  TextEditingController ecole = TextEditingController();
  TextEditingController diplome = TextEditingController();
  TextEditingController date = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.education != null) {
      ecole.text = (widget.education?.schoolName != null)
          ? widget.education!.schoolName
          : '';

      diplome.text = (widget.education?.schoolLevel != null)
          ? widget.education!.schoolLevel
          : '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
      ),
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(right: 18, left: 15),
                      child: GestureDetector(
                        child: Icon(
                          Icons.chevron_left,
                          color: myPurple,
                          size: 40,
                        ),
                        onTap: () {
                          Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Exp_pro()));
                        },
                      )),
                  Text(
                    "Ajouter éducation",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: myPurple),
                  ),
                ],
              )),
          DelayedAnimation(
              delay: 150,
              child: Container(
                margin: EdgeInsets.all(22),
                child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                child: TextFormField(
                                  controller: ecole,
                                  decoration: InputDecoration(
                                      labelText: "Ecole / Université /Lycée",
                                      hintText: "Entrez l'établissemet",
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular((12))))),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Veillez remplir ce champ";
                                    }
                                    return null;
                                  },
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                child: TextFormField(
                                  controller: diplome,
                                  decoration: InputDecoration(
                                      labelText: "Diplome",
                                      hintText: "Entrez le diplome",
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular((12))))),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Veillez remplir ce champ";
                                    }
                                    return null;
                                  },
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                child: TextFormField(
                                  controller: date,
                                  decoration: InputDecoration(
                                      labelText: "Date",
                                      hintText: "Ex: Aout 2021 - Dec 2021",
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular((12))))),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Veillez remplir ce champ";
                                    }
                                    return null;
                                  },
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
              )),
          Container(
              margin: EdgeInsets.only(top: 10),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Text("Enregistrer",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white)),
                    ),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.all(15)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(myPurple),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(myPurple),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    side: BorderSide(color: myPurple)))),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Education educationcv = Education(
                            diplome.text, ecole.text + "\n" + date.text);
                        EducationModel educationModel = EducationModel(
                            id: Provider.of<DataService>(context, listen: false)
                                .getIdEducation(),
                            education: educationcv);
                        Provider.of<DataService>(context, listen: false)
                            .addEducation(educationModel);
                        Navigator.pop(
                          context,
                        );
                      }
                    }),
              )),
        ],
      ),
    );
  }
}
