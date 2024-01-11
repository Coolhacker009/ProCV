// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class InfoProfil {
  String? nom;
  String? profession;
  String? adresse;
  String? tel;
  String? email;
  String? presentation;
  InfoProfil({
    this.nom,
    this.profession,
    this.adresse,
    this.tel,
    this.email,
    this.presentation,
  });

  InfoProfil copyWith({
    String? nom,
    String? profession,
    String? adresse,
    String? tel,
    String? email,
    String? presentation,
  }) {
    return InfoProfil(
      nom: nom ?? this.nom,
      profession: profession ?? this.profession,
      adresse: adresse ?? this.adresse,
      tel: tel ?? this.tel,
      email: email ?? this.email,
      presentation: presentation ?? this.presentation,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nom': nom,
      'profession': profession,
      'adresse': adresse,
      'tel': tel,
      'email': email,
      'presentation': presentation,
    };
  }

  factory InfoProfil.fromMap(Map<String, dynamic> map) {
    return InfoProfil(
      nom: map['nom'] != null ? map['nom'] as String : null,
      profession:
          map['profession'] != null ? map['profession'] as String : null,
      adresse: map['adresse'] != null ? map['adresse'] as String : null,
      tel: map['tel'] != null ? map['tel'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      presentation:
          map['presentation'] != null ? map['presentation'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory InfoProfil.fromJson(String source) =>
      InfoProfil.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'InfoProfil(nom: $nom, profession: $profession, adresse: $adresse, tel: $tel, email: $email, presentation: $presentation)';
  }

  @override
  bool operator ==(covariant InfoProfil other) {
    if (identical(this, other)) return true;

    return other.nom == nom &&
        other.profession == profession &&
        other.adresse == adresse &&
        other.tel == tel &&
        other.email == email &&
        other.presentation == presentation;
  }

  @override
  int get hashCode {
    return nom.hashCode ^
        profession.hashCode ^
        adresse.hashCode ^
        tel.hashCode ^
        email.hashCode ^
        presentation.hashCode;
  }
}
