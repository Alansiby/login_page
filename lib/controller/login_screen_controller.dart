import 'package:flutter/material.dart';

class LoginScreenController extends ChangeNotifier {
  bool loggedIn = false;
  //initionaly the loggedin be false so that at first we need to loggin
  bool get login => loggedIn;

  //to store the value of loggedin
  void logedin() {
    //function for login
    loggedIn = true;
    //when the login function is used loggedin became true
    notifyListeners();
  }

  //to store the value of loggedin
  void logedout() {
    //function for logout
    loggedIn = false;
    //when the login function is used loggedin became true
    notifyListeners();
  }
}
