import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        centerTitle: true,
        title: const Text('Admin Login',
            style:
                TextStyle(color: Colors.white60, fontWeight: FontWeight.bold)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            'assets/images/002.png',
            alignment: Alignment.bottomCenter,
            height: 100,
            width: 500,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 30,
            ),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                // ignore: prefer_const_constructors
                TextField(
                  decoration: const InputDecoration(labelText: 'Email'),
                ),
                // ignore: prefer_const_constructors
                TextField(
                  decoration: const InputDecoration(labelText: 'Password'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
