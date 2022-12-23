
import 'package:budget/view/%20authentication/forgot_password.dart';
import 'package:budget/view/%20authentication/newpassword.dart';
import 'package:budget/view/%20authentication/success.dart';
import 'package:budget/view/%20authentication/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Budget Tracker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor:const Color(0xFF6D5FFD


          )
      ),
      home: const WelcomePage()
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("hello");
  }
}
