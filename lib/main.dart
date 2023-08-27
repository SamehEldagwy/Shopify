import 'package:flutter/material.dart';
import 'package:shopify/Register.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: AnimatedSplashScreen(

      splash: Center(
        child: Text("shopify",
        style: TextStyle(
          fontWeight:FontWeight.w700 ,
          fontSize: 80 ,
          color: Color(0xFFF2F2F2)),),
      ),
      nextScreen:Register() ,
      backgroundColor:  Color(0xffF25E3D),
      animationDuration: Duration(milliseconds: 1500),
      splashIconSize: double.infinity,
      splashTransition: SplashTransition.decoratedBoxTransition,
      ),
    );
  }
}