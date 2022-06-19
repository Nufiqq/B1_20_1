import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kelompok1_b1/Login.dart';

class Daftar extends StatefulWidget {
  const Daftar({Key? key}) : super(key: key);

  @override
  State<Daftar> createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController passwordController = TextEditingController(text: "");
  String defaultFontFamily = 'Roboto-Light.ttf';
  double defaultFontSize = 14;
  double defaultIconSize = 17;

  var Nama = '';
  var Hp = '';
  var Email = '';
  var Pass = '';
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Registrasi"),
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 50),
              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  onChanged: (v) {
                    Nama = v;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Name ",
                      hintText: "Your Name"),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  onChanged: (v) {
                    Hp = v;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Digits Only",
                      labelText: "Contact Number "),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "name@mail.com",
                      labelText: "Email "),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Password "),
                ),
              ),
              SizedBox(height: 50),
              Container(
                height: 50,
                margin: EdgeInsets.only(left: 100, right: 100),
                child: ElevatedButton(
                  onPressed: () async {
                    var collection =
                        FirebaseFirestore.instance.collection('user');
                    var res = await collection.add({
                      'Nama': Nama,
                      'Hp': Hp,
                      'Email ': Email,
                      'Password': Pass
                    });
                    print(res);
                    _doSignUp();
                  },
                  child: Text(
                    "Sign Up",
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                  ),
                ),
              ),
              SizedBox(height: 100),
              Flexible(
                flex: 1,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Text(
                          "Already have an account?",
                          style: TextStyle(
                            color: Color(0xFF666666),
                            fontFamily: defaultFontFamily,
                            fontSize: defaultFontSize,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Login(),
                            ),
                          )
                        },
                        child: Container(
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              color: Color(0xFFf7418c),
                              fontFamily: defaultFontFamily,
                              fontSize: defaultFontSize,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }

  _doSignUp() async {
    try {
      var Email = emailController.text;
      var pass = passwordController.text;
      var res = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: Email,
        password: pass,
      );

      final snackBar = SnackBar(
        duration: const Duration(seconds: 5),
        content: Text('Sign up successfull'),
        backgroundColor: Colors.green,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      Navigator.push(context, MaterialPageRoute(builder: (_) {
        return Login();
      }));
    } catch (e) {
      print('exception sign up');
      print(e.runtimeType);
      if (e is FirebaseAuthException) {
        print(e);
        print(e.message);
      }
      final snackBar = SnackBar(
        duration: const Duration(seconds: 5),
        content: Text('Wrong email or password. Try again'),
        backgroundColor: Colors.red,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
