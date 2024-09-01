import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedprefrencesapp2/domain/routing%20page.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SharedPreferences? prefs;

  @override
  void initState() {
    super.initState();
    getValueFromPrefs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFBC8C8F),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'Cake Rush',
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Image.asset(
              'assets/images/bg_cacke.png',
              width: double.infinity,
              height: 300,
            )),
          ),
        ],
      ),
    );
  }

  void getValueFromPrefs() async {
    prefs = await SharedPreferences.getInstance();
    bool isLoggedIn = prefs?.getBool('isLoggedIn') ?? false;

    Timer(
      Duration(seconds: 5),
      () {
        if (isLoggedIn) {
          Navigator.pushReplacementNamed(context, AppRoutes.HOME_PAGE_ROUTE);
          // Navigator.pushReplacement(
          //   context,
          //   MaterialPageRoute(
          //       builder: (context) =>
          //           HomePagee()), // Replace with your home page
          // );
        } else {
          Navigator.pushReplacementNamed(context, AppRoutes.LOGIN_PAGE_ROUTE);
          // Navigator.pushReplacement(
          //   context,
          //   MaterialPageRoute(builder: (context) => LoginPage()),
          // );
        }
      },
    );
  }
}
