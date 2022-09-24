import 'package:flutter/material.dart';
import 'package:login_system/home/view/homePage.dart';
import 'package:login_system/home/view/splashScreen.dart';
import 'package:login_system/loginRegister/provider/loginProvider.dart';
import 'package:login_system/loginRegister/view/loginPage.dart';
import 'package:login_system/loginRegister/view/registerPage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => LoginProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashScreen(),
          'home': (context) => Homepage(),
          'login': (context) => Loginpage(),
          'signup': (context) => Registerpage(),
        },
      ),
    ),
  );
}
