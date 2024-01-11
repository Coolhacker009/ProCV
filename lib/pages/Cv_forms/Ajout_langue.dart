import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_resume_template/flutter_resume_template.dart';
import 'package:pro_cv/Services/dataService.dart';
import 'package:pro_cv/delayed_animation.dart';
import 'package:pro_cv/pages/Cv_forms/exp_pro.dart';
import 'package:pro_cv/pages/Cv_forms/langues.dart';
import 'package:pro_cv/pages/home.dart';
import 'package:pro_cv/pages/model/languecv.dart';
import 'package:pro_cv/utils/constants.dart';
import 'package:pro_cv/widgets/card.dart';
import 'package:provider/provider.dart';

class Ajout_langue extends StatefulWidget {
  const Ajout_langue({super.key, this.langueModel});
  final LangueModel? langueModel;
  @override
  State<Ajout_langue> createState() => _Ajout_langueState();
}

class _Ajout_langueState extends State<Ajout_langue> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController langue = TextEditingController();
  double level = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.langueModel != null) {
      langue.text = (widget.langueModel?.language?.language != null)
          ? widget.langueModel!.language!.language
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
                                  builder: (context) => Langues()));
                        },
                      )),
                  Text(
                    "Ajouter langue",
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
                                  controller: langue,
                                  decoration: InputDecoration(
                                      labelText: "Langue",
                                      hintText: "Entrez le nom de la langue",
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
                            ],
                          ),
                        )
                      ],
                    )),
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 2),
                child: Text(
                  'Niveau',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 2, bottom: 15),
                child: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: RatingBar.builder(
                              initialRating:
                                  widget.langueModel?.language?.level != null
                                      ? widget.langueModel!.language!.level
                                          .toDouble()
                                      : 0,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding: EdgeInsets.symmetric(horizontal: 4),
                              itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: myPurple,
                                    size: 10,
                                  ),
                              onRatingUpdate: (rating) {
                                level = rating;
                              }),
                        ),
                      ]),
                ),
              ),
            ],
          ),
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
                      Language language = Language(langue.text, level.toInt());
                      LangueModel langueModel = LangueModel(
                          id: Provider.of<DataService>(context, listen: false)
                              .getIdLangues(),
                          language: language);
                      Provider.of<DataService>(context, listen: false)
                          .addLanguage(langueModel);
                      Navigator.pop(context);
                    }),
              )),
        ],
      ),
    );
    ;
  }
}
