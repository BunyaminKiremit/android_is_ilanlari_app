import 'package:flutter/material.dart';
import 'package:job_locater/service/auth_service.dart';
import 'package:multiselect_formfield/multiselect_formfield.dart';

import '../../widgets/background.dart';
import '../../widgets/bottom_navigation.dart';
import '../login/login.dart';



class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  
  final AuthService _auth = AuthService();
  final nameController = TextEditingController();
  final lastnameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final meslekController = TextEditingController();
  String message = '';
  final _fromKey = GlobalKey<FormState>();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Background(

            child: SingleChildScrollView(
              child: Form(
                key: _fromKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    const SizedBox(height: 100),

                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: const Text(
                        "KAYDOL",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 252, 122, 0),
                            fontSize: 36),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      child: TextField(
                        controller: nameController,
                        decoration: const InputDecoration(labelText: "İsim"),
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      child: TextField(
                        controller: lastnameController,
                        decoration: const InputDecoration(labelText: "Soyisim"),
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      child: TextField(
                        controller: emailController,
                        decoration: const InputDecoration(labelText: "Email"),
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      child: TextField(
                        controller: passController,
                        decoration: const InputDecoration(labelText: "Şifre"),
                        obscureText: true,
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      child: TextField(
                        controller: meslekController,
                        decoration: const InputDecoration(labelText: "Meslek"),

                      ),
                    ),
                    SizedBox(height: size.height * 0.03),         
                    Container(
                      alignment: Alignment.centerRight,
                      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 0, 0, 0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        onPrimary: Colors.orangeAccent,
                        padding: const EdgeInsets.all(0),
                        ),
                        onPressed: () {
                          _auth
                              .createPerson(
                                  nameController.text,
                                  lastnameController.text,                                            
                                  emailController.text,
                                  passController.text,
                                  meslekController.text)  
                              .then((value) {
                            return Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          });
                        },
                      
                      
                        child: Container(
                          alignment: Alignment.center,
                          height: 50.0,
                          width: size.width * 0.5,
                          padding: const EdgeInsets.all(0),
                          child: const Text(
                            "KAYDOL",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    
                    Container(
                      alignment: Alignment.centerRight,
                      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: GestureDetector(
                        onTap: () => {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => LoginScreen()))
                        },
                        child: const Text(
                          "Zaten hesabınız var mı? GİRİŞ YAP",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
          ),
        ],

      ),
    );
  }
}
