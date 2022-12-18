import 'package:flutter/material.dart';
import 'package:learning/Screens/Login/login_screen.dart';
import 'package:learning/constant.dart';

import '../../Controller/Futu/FutuCon.dart';
import '../flights/flight_list.dart'; //for flight_list screen

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Center(
            child: Container(
              height: 100,
              width: 350,
              child: IconButton(
                icon: Icon(
                  Icons.account_circle_rounded,
                  size: 35,
                  color: mPrimaryColor,
                ),
                alignment: Alignment.bottomLeft,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                },
              ),
            ),
          ),
          Image.asset(
            'assets/images/004.png',
            alignment: Alignment.topCenter,
            height: 400,
            width: 400,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(36),
                      ),
                      foregroundColor: Colors.white, // text color
                      backgroundColor: Color.fromARGB(255, 3, 50, 130),
                    ),
                    onPressed: () async {
                      // var t = await FutuCon.S2();
                      // print(t.map((e) => e.flightNo));
                      // for (var i in t) {
                      //   FutuCon.s1.add(i.toJson());
                      // }

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FlightScreens()));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      alignment: Alignment.center,
                      child: const Text(
                        "Add Flight",
                        style: TextStyle(fontSize: 20),
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
