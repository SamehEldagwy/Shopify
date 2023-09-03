import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shopify/Login.dart';
//import 'package:shopify/Register.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:shopify/pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      // options:
      );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget start() {
    if (FirebaseAuth.instance.currentUser != null) {
      return Pages();
    } else {
      return Login();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Center(
          child: Text(
            "shopify",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 80,
                color: Color(0xFFF2F2F2)),
          ),
        ),
        nextScreen: start(),
        backgroundColor: Color(0xffF25E3D),
        animationDuration: Duration(milliseconds: 1500),
        splashIconSize: double.infinity,
        splashTransition: SplashTransition.decoratedBoxTransition,
      ),
    );
  }
}
