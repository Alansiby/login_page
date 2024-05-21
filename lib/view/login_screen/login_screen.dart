// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:login_page/controller/login_screen_controller.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Press"),
            ElevatedButton(
                onPressed: () {
                  //if the elevated butten ids pressed then goes to the login in LoginScreenController
                  Provider.of<LoginScreenController>(context, listen: false)
                          .login
                      //if the condition in LoginScreenController is satisfied then
                      ? Provider.of<LoginScreenController>(context,
                              listen: false)
                          .logedout()
                      //else
                      : Provider.of<LoginScreenController>(context,
                              listen: false)
                          .logedin();
                },
                //to show the elevated butten text
                child: Text("switch Login")),
            Consumer<LoginScreenController>(
                builder: (context, authProvider, Widget) {
              //to show the condition (login or logout)
              return Text("User is ${authProvider.login ? "Login" : "Logout"}");
            })
          ],
        ),
      ),
    );
  }
}
