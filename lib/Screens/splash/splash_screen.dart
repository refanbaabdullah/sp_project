import 'package:flutter/material.dart';
import 'package:learning/Screens/homepage/Home_screen.dart';
import 'package:learning/constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    var d = Duration(seconds: 3);
    // here to delay 3 seconds to next page
    Future.delayed(d, () {
      // to next page and close this page
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
        builder: (context) {
          return homepage();
        },
      ), (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: mPrimaryColor),
        child: Center(
            child: Image.asset(
          'assets/images/003.png',
          width: 300,
        )),
      ),
    );
  }
}
