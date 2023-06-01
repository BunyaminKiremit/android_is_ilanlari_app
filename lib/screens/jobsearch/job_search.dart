import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Explorer extends StatelessWidget {
  const Explorer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController jobTitle = TextEditingController();
    TextEditingController location = TextEditingController();
    return Padding(
      padding: const EdgeInsets.only(top: 60.0),
      child: Column(children: <Widget>[
        Text(
          'İŞİM CEPTE',
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35.0,
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        SizedBox(
          height: 350,
          child: Card(
            elevation: 5,
            color: Color.fromARGB(255, 255, 123, 0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 30),
                const Text(
                  'Arama',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: TextField(
                    controller: jobTitle,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: const Icon(Icons.business_center_sharp),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        hintText: 'İş veya Şirket'),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: TextField(
                    controller: location,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: const Icon(Icons.location_on),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        hintText: 'Lokasyon'),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 50,
                  width: 400,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
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
                 
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.orangeAccent,
                      ),
                      label: const Text(
                        'Ara',
                        style: TextStyle(
                            color: Colors.orangeAccent, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
