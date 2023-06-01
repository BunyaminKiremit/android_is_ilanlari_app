import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:job_locater/model/status.dart';

class StatusService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //veri ekleme
  Future<Status> addStatus(
      String isim,
      String soyisim,
      String hakkinda,
      String github,
      String universite,
      String bolum,
      String ogrenimturu,
      String dil,
      String seviye) async {
    var ref = _firestore.collection("Status");
    var documentRef = await ref.add({
      "isim": isim,
      "soyisim": soyisim,
      "hakkinda": hakkinda,
      "github": github,
      "universite": universite,
      "bolum": bolum,
      "ogrenimturu": ogrenimturu,
      "dil": dil,
      "seviye": seviye
    });

    return Status(
        id: documentRef.id,
        isim: isim,
        soyisim: soyisim,
        hakkinda: hakkinda,
        github: github,
        universite: universite,
        bolum: bolum,
        ogrenimturu: ogrenimturu,
        dil: dil,
        seviye: seviye);
  }

  // veri gösterme
  Stream<QuerySnapshot> getStatus() {
    var ref = _firestore.collection("Status").snapshots();
    return ref;
  }
  //silme
  Future<void> removeStatus(String docId) {
    var ref = _firestore.collection("Status").doc(docId).delete();
    return ref;
  }
}
