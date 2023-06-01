import 'package:cloud_firestore/cloud_firestore.dart';

class Status {
  String? id;
  String? isim;
  String? soyisim;
  String? hakkinda;
  String? github;
  String? universite;
  String? bolum;
  String? ogrenimturu;
  String? dil;
  String? seviye;

  Status(
      {this.id,
      this.isim,
      this.soyisim,
      this.hakkinda,
      this.github,
      this.universite,
      this.bolum,
      this.ogrenimturu,
      this.dil,
      this.seviye});

  factory Status.fromSnapshot(DocumentSnapshot snapshot) {
    return Status(
      id:snapshot.id,
      isim: snapshot["isim"],
      soyisim: snapshot["soyisim"],
      hakkinda: snapshot["hakkinda"],
      github: snapshot["github"],
      universite: snapshot["universite"],
      bolum: snapshot["bolum"],
      ogrenimturu: snapshot["ogrenimturu"],
      dil: snapshot["dil"],
      seviye: snapshot["seviye"],
    );
  }
}
