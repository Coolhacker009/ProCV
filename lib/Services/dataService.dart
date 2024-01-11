import 'package:flutter/material.dart';
import 'package:flutter_resume_template/flutter_resume_template.dart';
import 'package:pro_cv/pages/model/educationModel.dart';
import 'package:pro_cv/pages/model/experience.dart';
import 'package:pro_cv/pages/model/infoProfil.dart';
import 'package:pro_cv/pages/model/languecv.dart';

class DataService extends ChangeNotifier {
  List<EducationModel> educations = [];

  List<Experience> expreiences = [];

  List<LangueModel> languages = [];

  List<String> loisirs = [];

  InfoProfil infoProfil = InfoProfil();

  void addExperience(Experience experience) {
    this.expreiences.add(experience);
    notifyListeners();
  }

  void addEducation(EducationModel education) {
    this.educations.add(education);
    notifyListeners();
  }

  void addLanguage(LangueModel langueModel) {
    this.languages.add(langueModel);
    notifyListeners();
  }

  int getId() {
    List<Experience> exp = this.expreiences;
    if (exp.length == 0) {
      return 1;
    }
    exp.sort((a, b) => a.id!.compareTo(b.id!));
    return exp.last.id!;
  }

  int getIdEducation() {
    List<EducationModel> exp = this.educations;
    if (exp.length == 0) {
      return 1;
    }
    exp.sort((a, b) => a.id!.compareTo(b.id!));
    return exp.last.id!;
  }

  int getIdLangues() {
    List<LangueModel> exp = this.languages;
    if (exp.length == 0) {
      return 1;
    }
    exp.sort((a, b) => a.id!.compareTo(b.id!));
    return exp.last.id!;
  }
}
