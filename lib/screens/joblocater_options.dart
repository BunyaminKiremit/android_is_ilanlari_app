
import 'package:flutter/material.dart';
import 'package:job_locater/screens/signup/signup.dart';

import 'login/login.dart';


class JobLocateOptions extends StatelessWidget {
  const JobLocateOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  const EdgeInsets.only(bottom: 100.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 50),
              Image.asset('assets/images/jobsearc2.jpg',
                height: 190,
                width: 250,
              ),
              Image.asset('assets/images/job-search.png',
                height: 100,
                width: 100,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(height: 20),
              Text('Sizde Bir İşim Olsun Diyorsanız',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
              ),
              const Text('Hemen İşinizi Bulun ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Zaten hesabınız var mı?',
                    style: TextStyle(
                        color: Colors.black87
                    ),
                  ),
                  TextButton(onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => LoginScreen())
                    );
                  },
                      child: const Text('Giriş Yap',
                        style: TextStyle(
                            color: Colors.orangeAccent,fontSize: 20
                        ),
                      )
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(side: const BorderSide(
                      color: Colors.blue,
                      width: 1,
                      style: BorderStyle.solid
                  ), borderRadius: BorderRadius.circular(50)),
                  primary: Colors.orangeAccent,
                  ),
                  
                  onPressed: (){
                        Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen())
                    );

                  },
                  icon: const Icon(Icons.account_circle_rounded,
                    color: Colors.black,
                  ),
                  label: const Text('Bir hesap oluşturun',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(side: const BorderSide(
                      color: Colors.blue,
                      width: 1,
                      style: BorderStyle.solid
                  ), borderRadius: BorderRadius.circular(50)),
                  primary: Colors.orangeAccent,
                  ),
                  
                  onPressed: (){
                 
                  },
                  icon: const Icon(Icons.facebook,
                    color: Colors.black,

                  ),
                  label: const Text('Facebook ile kayıt ol',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(side: const BorderSide(
                      color: Colors.blue,
                      width: 1,
                      style: BorderStyle.solid
                  ), borderRadius: BorderRadius.circular(50)),
                  primary: Colors.orangeAccent,
                  ),
                  
                  onPressed: (){
                  },
                  icon: const Icon(Icons.language,
                    color: Colors.black,
                  ),
                  label: const Text('Google ile Kaydolun',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
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
