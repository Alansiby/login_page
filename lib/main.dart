// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login_page/controller/login_screen_controller.dart';
import 'package:login_page/view/login_screen/login_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
        //we can add all the controllers in multiprovider within the "[]"
        providers: [
          ChangeNotifierProvider(create: (context) => LoginScreenController())
        ],
        child: LoginScreen(),
      ),
    );
  }
}
