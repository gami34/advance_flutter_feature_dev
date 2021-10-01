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
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        loginButtonClicked = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, Routes.home);
      setState(() {
        loginButtonClicked = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
                height: 40.2,
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
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.deepPurple,
                        )),
                        labelText: "Username",
                        hintText: "Enter sername",
                      ),
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
                      validator: (String? value) {
                        print(value);
                        if (value!.isEmpty) {
                          return "Username cannot be empty";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepPurple),
                        ),
                        labelText: "Password",
                        hintText: "Enter password",
                      ),
                      validator: (String? value) {
                        print(value);
                        if (value!.isEmpty) {
                          return "Password cannot be empty";
                        } else if (value.length < 6) {
                          return "Password needs to be a minimum of 6 characters";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(
                          loginButtonClicked ? 24.0 : 5.0),
                      color: Colors.deepPurple,
                      child: InkWell(
                        onTap: () => moveToHome(context),
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
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
