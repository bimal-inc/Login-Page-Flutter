import 'package:flutter/material.dart';
import 'package:profile_app/pages/LoginScreen.dart';

void main() => runApp(LoginApp());

class LoginApp extends StatefulWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  _LoginAppState createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login App",
      home: LoginPage(),
    );
  }
}
