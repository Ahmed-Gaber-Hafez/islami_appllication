import 'dart:async';

import 'package:flutter/material.dart';
import 'package:practice/layout/home_layout.dart';

class Splash_Screen extends StatelessWidget {

  static const String routeName = "Splash_Screen";

  const Splash_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
        const (Duration(seconds: 3),
            () {
          Navigator.pushReplacementNamed(context, HomeLayout.routeName);
        },
        ) as Duration;
        var mediaquery= MediaQuery.of(context).size;

    return Scaffold(
      body: Image.asset("assets/images/splash_background.png",
        width: mediaquery.width,
        height: mediaquery.height,
        fit: BoxFit.cover,),


    );
  }
}