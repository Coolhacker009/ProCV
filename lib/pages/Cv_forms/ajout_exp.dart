import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_resume_template/flutter_resume_template.dart';
import 'package:pro_cv/Services/dataService.dart';
import 'package:pro_cv/delayed_animation.dart';
import 'package:pro_cv/pages/Cv_forms/exp_pro.dart';
import 'package:pro_cv/pages/home.dart';
import 'package:pro_cv/pages/model/experience.dart';
import 'package:pro_cv/utils/constants.dart';
import 'package:pro_cv/widgets/card.dart';
import 'package:provider/provider.dart';

class Ajout_exp extends StatefulWidget {
  const Ajout_exp({super.key, this.experience});

  final Experience? experience;

  @override
  State<Ajout_exp> createState() => _Ajout_expState();
}

class _Ajout_expState extends State<Ajout_exp> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController nomSociete = TextEditingController();
  TextEditingController poste = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController description = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.experience != null) {
      nomSociete.text =
          widget.experience!.experienceData?.experienceLocation != null
              ? widget.experience!.experienceData!.experienceLocation
              : '';
      poste.text = widget.experience!.experienceData?.experienceTitle != null
          ? widget.experience!.experienceData!.experienceTitle
          : '';
      date.text = widget.experience!.experienceData?.experiencePeriod != null
          ? widget.experience!.experienceData!.experiencePeriod
          : '';
      description.text =
          widget.experience!.experienceData?.experienceDescription != null
              ? widget.experience!.experienceData!.experienceDescription
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
                    "Ajouter expérience",
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
                                  controller: nomSociete,
                                  decoration: InputDecoration(
                                      labelText: "Nom de la société",
                                      hintText: "Entrez le nom de la société",
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
                                  keyboardType: TextInputType.emailAddress,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                child: TextFormField(
                                  controller: poste,
                                  decoration: InputDecoration(
                                      labelText: "Poste",
                                      hintText: "Entrez le poste",
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
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                child: TextFormField(
                                  controller: description,
                                  decoration: InputDecoration(
                                      labelText: "Description",
                                      hintText: "description",
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
                        if (widget.experience != null) {
                        } else {
                          ExperienceData experienceData = ExperienceData(
                              experienceTitle: poste.text,
                              experienceLocation: nomSociete.text,
                              experiencePeriod: date.text,
                              experienceDescription: description.text,
                              experiencePlace: '');
                          Experience experience = Experience(
                              id: Provider.of<DataService>(context,
                                      listen: false)
                                  .getId(),
                              experienceData: experienceData);
                          Provider.of<DataService>(context, listen: false)
                              .addExperience(experience);
                        }
                        Navigator.pop(context);
                      }
                    }),
              )),
        ],
      ),
    );
  }
}
