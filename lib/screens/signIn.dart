import 'package:flutter/material.dart';
import 'package:go_foodz/screens/home/main%20food%20page.dart';
import 'package:go_foodz/screens/signUp.dart';
import 'package:go_foodz/services/Auth.dart';
import 'package:go_foodz/utils/colors.dart';
import 'package:go_foodz/utils/dimensions.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthMethods _authMethods = AuthMethods();

  TextEditingController passwordTEC = TextEditingController();
  TextEditingController emailTEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Login/SignUp"),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - Dimensions.ratio * 100,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: emailTEC,
                validator: (v) {
                  return RegExp(r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$")
                          .hasMatch(v!)
                      ? null
                      : "enter valid email";
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Email",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: passwordTEC,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "password",
                  helperText: "Should be atleast 6 characters long",
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  _authMethods.SignInWithEmailPassword(
                      emailTEC.text, passwordTEC.text);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => MainFoodPage()));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  width: double.maxFinite,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text("SIGN IN"),
                ),
              ),
              Container(
                width: double.maxFinite,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text("SIGN IN WITH GOOGLE"),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text("New User? Sign Up Now"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
