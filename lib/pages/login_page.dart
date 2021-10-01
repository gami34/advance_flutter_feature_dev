import 'dart:ui';

import 'package:catalog_app/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool loginButtonClicked = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/loginimage2.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome $name!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20.2,
              child: Text(
                "Signup Form",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Username",
                      hintText: "Enter username",
                    ),
                    onChanged: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter password",
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        loginButtonClicked = !loginButtonClicked;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, Routes.home);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: loginButtonClicked ? 40 : 150,
                      height: 40,
                      alignment: Alignment.center,
                      child: loginButtonClicked
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(color: Colors.white),
                            ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              loginButtonClicked ? 24.0 : 5.0),
                          color: Colors.deepPurple),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
