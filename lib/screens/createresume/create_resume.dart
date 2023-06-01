import 'package:flutter/material.dart';
import 'package:job_locater/service/status_servis.dart';

class CreateResume extends StatefulWidget {
  @override
  _CreateResumeState createState() => _CreateResumeState();
}

class _CreateResumeState extends State<CreateResume> {
  StatusService _statusService = StatusService();
  TextEditingController isim = TextEditingController();
  TextEditingController soyisim = TextEditingController();
  TextEditingController hakkinda = TextEditingController();
  TextEditingController github = TextEditingController();
  TextEditingController universite = TextEditingController();
  TextEditingController bolum = TextEditingController();
  TextEditingController ogrenimturu = TextEditingController();
  TextEditingController dil = TextEditingController();
  TextEditingController seviye = TextEditingController();
  List<Widget> list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 102, 0),
        title: const Text('Özgeçmiş'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const SizedBox(height: 20),
              const SizedBox(height: 1),
              const Text(
                'Kişisel Bilgiler',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
              ),
              const SizedBox(height: 15),
              Row(children: <Widget>[
                Flexible(
                  child: TextField(
                    controller: isim,
                    decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(width: 2),
                        ),
                        prefixIcon: const Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        hintText: 'İsim'),
                  ),
                ),
                const SizedBox(width: 15),
                Flexible(
                  child: TextField(
                    controller: soyisim,
                    decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(width: 2),
                        ),
                        prefixIcon: const Icon(Icons.contact_page),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        hintText: 'Soyisim'),
                  ),
                ),
              ]),
              const SizedBox(height: 15),
              TextField(
                controller: hakkinda,
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                    ),
                    prefixIcon: const Icon(Icons.accessibility_new_rounded),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    hintText: 'Hakkında'),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: github,
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                    ),
                    prefixIcon: const Icon(Icons.work),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    hintText: 'Github Adresi'),
              ),
              const SizedBox(height: 15),
              const Text(
                'Eğitim Bilgisi',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: universite,
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                    ),
                    prefixIcon: const Icon(Icons.cast_for_education),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    hintText: 'Üniversite'),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: bolum,
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                    ),
                    prefixIcon: const Icon(Icons.cast_for_education),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    hintText: 'Bölüm'),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: ogrenimturu,
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                    ),
                    prefixIcon: const Icon(Icons.cast_for_education_rounded),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    hintText: 'Öğrenim Türü'),
              ),
              const SizedBox(height: 15),
              const Text(
                'Dil Bilgisi',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
              ),
              const SizedBox(height: 15),
              Row(
                children: <Widget>[
                  Flexible(
                    child: TextField(
                      controller: dil,
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(width: 2),
                        ),
                        prefixIcon: const Icon(Icons.perm_identity_sharp),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        hintText: 'Dil',
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Flexible(
                    child: TextField(
                      controller: seviye,
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(width: 2),
                        ),
                        prefixIcon: const Icon(Icons.safety_divider),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        hintText: 'Seviye',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            color: Colors.orangeAccent,
                            width: 1,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(50)),
                    primary: Color.fromARGB(255, 0, 0, 0),
                  ),
                  onPressed: () {
                    _statusService.addStatus(
                        isim.text,
                        soyisim.text,
                        hakkinda.text,
                        github.text,
                        universite.text,
                        bolum.text,
                        ogrenimturu.text,
                        dil.text,
                        seviye.text);
                  },
                  icon: const Icon(
                    Icons.save,
                    color: Colors.orangeAccent,
                  ),
                  label: const Text(
                    'Kaydet',
                    style: TextStyle(
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
