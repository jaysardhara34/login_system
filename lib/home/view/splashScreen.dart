import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login_system/utils/sharedPref.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    checkLogin();
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 90,
                backgroundColor: Color(0xffffffff),
                backgroundImage: AssetImage('assets/logo.png'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Login System',
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void checkLogin() async {
    bool? status = await getisloginSHP();
    if (status == true) {
      Timer(Duration(seconds: 3),
          () => Navigator.pushReplacementNamed(context, 'home'),);
    } else {
      Timer(Duration(seconds: 3),
          () => Navigator.pushReplacementNamed(context, 'login'),);
    }
  }
}
