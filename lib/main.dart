import 'package:flutter/material.dart';
import 'package:practice/core/theme/applicat%5Bon_theme.dart';
import 'package:practice/layout/home_layout.dart';
import 'package:practice/moduls/splash-screen.dart';

void main() {
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ApplicationTheme.lightTheme,
        darkTheme: ApplicationTheme.darkTheme,
        initialRoute: Splash_Screen.routeName,
        routes: {
          Splash_Screen.routeName: (context) => const Splash_Screen(),
          Home_layout.routeName: (context) => Home_layout(),
        });
  }
}
