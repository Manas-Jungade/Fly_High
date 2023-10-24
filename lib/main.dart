import 'dart:async';


import 'package:flutter/material.dart';
import 'package:fly_high/Addnumber_page1.dart';
import 'package:fly_high/bottomnavigationbar_mainpage.dart';
import 'package:fly_high/loginpage.dart';
import 'package:fly_high/signuppage.dart';

import 'package:fly_high/homepage.dart';

void main() {
  runApp(MaterialApp(
    home: Splash(),
    debugShowCheckedModeBanner: false,
    routes: {
      "/login": (contex) => const login(),
      "/signup": (contex) => const signup(),
      "/screen1": (contex) => const screen1(),
      "/Mainpage":(contex) => const Mainpage(),
      "/homepage":(context)=>  homepage(String),

    },
  ));
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => login(),
          ));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image(image: AssetImage("img/flyhigh.png"))),
          ],
        ),
      ),
    );
  }
}
