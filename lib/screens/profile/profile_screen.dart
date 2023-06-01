import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:job_locater/screens/joblocater_options.dart';
import 'package:job_locater/service/status_servis.dart';
import 'change_pass.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  StatusService _statusService = StatusService();
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              //width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 255, 123, 0),
                    Color.fromARGB(255, 48, 29, 0)
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20.0,
                    ),
                    const CircleAvatar(
                      radius: 65.0,
                      backgroundImage: AssetImage('assets/images/male.jpeg'),
                      backgroundColor: Colors.white,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text('Bünyamin Kiremit',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        )),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      'kiremitbunyamin.com@gmail.com',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SizedBox(
                          width: 150,
                          height: 50,
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      color: Colors.orangeAccent,
                                      width: 1,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(50)),
                              primary: Colors.black,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ChangePassword()));
                            },
                            icon: const Icon(
                              Icons.settings,
                              color: Colors.orangeAccent,
                            ),
                            label: const Text(
                              'Ayarlar',
                              style: TextStyle(
                                  color: Colors.orangeAccent,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          height: 50,
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      color: Colors.orangeAccent,
                                      width: 1,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(50)),
                              primary: Colors.black,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const JobLocateOptions()));
                            },
                            icon: const Icon(
                              Icons.login_outlined,
                              color: Colors.orangeAccent,
                            ),
                            label: const Text(
                              'Çıkış Yap',
                              style: TextStyle(
                                  color: Colors.orangeAccent,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.grey[200],
              child: Center(
                  child: Card(
                      margin: const EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
                      child: SizedBox(
                          width: 350.0,
                          height: 320.0,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Bilgi",
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Divider(
                                  color: Colors.grey[300],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.person,
                                      color: Colors.orangeAccent,
                                      size: 35,
                                    ),
                                    const SizedBox(
                                      width: 20.0,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "İsim",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.grey[700],
                                          ),
                                        ),
                                        const Text(
                                          "Bünyamin Kiremit",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.alternate_email,
                                      color: Colors.orangeAccent,
                                      size: 35,
                                    ),
                                    const SizedBox(
                                      width: 20.0,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Email",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.grey[700],
                                          ),
                                        ),
                                        const Text(
                                          "kiremitbunyamin.com@gmail.com",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.code,
                                      color: Colors.orangeAccent,
                                      size: 35,
                                    ),
                                    const SizedBox(
                                      width: 20.0,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Meslek",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.grey[700],
                                          ),
                                        ),
                                        const Text(
                                          "Yazılım Mühendisi",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.signal_wifi_statusbar_null,
                                      color: Colors.orangeAccent,
                                      size: 35,
                                    ),
                                    const SizedBox(
                                      width: 20.0,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Durum",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.grey[700],
                                          ),
                                        ),
                                        const Text(
                                          "Etkin",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )))),
            ),
          ],
        ),
      ),
    );
  }
}
