import 'package:flutter/material.dart';
import 'package:go_foodz/screens/signIn.dart';
import 'package:go_foodz/screens/signUp.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool _showSignUp = false;
  void toggleView() {
    _showSignUp = !_showSignUp;
  }

  @override
  Widget build(BuildContext context) {
    if (_showSignUp != true) {
      return SignIn();
    } else {
      return SignUp();
    }
  }
}
