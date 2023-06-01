import 'package:flutter/material.dart';
import 'package:job_locater/service/auth_service.dart';

import '../../widgets/background.dart';
import '../../widgets/bottom_navigation.dart';
import '../signup/signup.dart';



class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthService _auth = AuthService();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool showSpinner = false;
  final _fromKey = GlobalKey<FormState>();
  String message = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Background(
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          key: _fromKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: const Text(
                  "GİRİŞ",
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
                child: TextFormField(
                  controller: emailController,
                  validator: (value) {
                    if(value == null) {
                      return 'Email cannot be empty';
                    }
                    return  null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(labelText: "Kullanıcı Adı"),
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  controller: passController,
                  validator: (value) {
                    if(value == null) {
                      return 'Password cannot be empty';
                    }
                    return  null;
                  },
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(labelText: "Şifre"),
                  obscureText: true,
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: const Text(
                  "Parolanızı mı unuttunuz?",
                  style: TextStyle(fontSize: 12, color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
              SizedBox(height: size.height * 0.05),
              Container(
                alignment: Alignment.centerRight,
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 255, 123, 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  onPrimary: Colors.black,
                  padding: const EdgeInsets.all(0),
                  ),
                  
                 onPressed: () async {
                                    setState(() {
                                      showSpinner = true;
                                    });
                                    try {
                                      final user = await _auth.signIn(
                                          emailController.text,
                                          passController.text);
                                      if (user != null) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    BottomNavigation()));
                                      } 
                                    } catch (e) {
                                      print(e);
                                    }
                                    setState(() {
                                      showSpinner = false;
                                    });
                                  },
                  
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    width: size.width * 0.5,
                    padding: const EdgeInsets.all(0),
                    child: const Text(
                      "GİRİŞ",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Text(message),
              Container(
                alignment: Alignment.centerRight,
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: GestureDetector(
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => RegisterScreen()))
                  },
                  child: const Text(
                    "Hesabınız yok mu? Kayıt ol",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
