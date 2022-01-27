// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    String username;
    String password;
    final myusername = TextField(
      onChanged: (val) {
        setState(() {
          username = val;
        });
      },
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: "username",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))),
    );

    final myinputfield = TextField(
      onChanged: (val) {
        setState(() {
          password = val;
        });
      },
      obscureText: true,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: "password",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))),
    );

    final myloginbutton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blue,
      child: MaterialButton(
        onPressed: () {
          print("hello bimal");
        },
        child: Text("Login"),
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
      ),
    );
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Icon(
                  Icons.supervised_user_circle_sharp,
                  size: 100,
                ),
                myusername,
                SizedBox(
                  height: 20,
                ),
                myinputfield,
                SizedBox(
                  height: 50,
                ),
                myloginbutton,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
