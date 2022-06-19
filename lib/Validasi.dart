import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kelompok1_b1/splash_screen.dart';
import 'MainPage.dart';
import 'Login.dart';
import 'LandingPage.dart';

class Validasi extends StatelessWidget {
  const Validasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return MainPage();
          } else {
            return SplashScreen();
          }
        },
      ),
    );
  }
}
