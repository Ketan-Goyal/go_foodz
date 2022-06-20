import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_foodz/services/Auth.dart';
import 'package:go_foodz/utils/colors.dart';
import 'package:go_foodz/utils/dimensions.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isLoading = false;

  final formKey = GlobalKey<FormState>();

  AuthMethods authMethods = new AuthMethods();
  TextEditingController usernameTEC = new TextEditingController();
  TextEditingController passwordTEC = new TextEditingController();
  TextEditingController emailTEC = new TextEditingController();

  signMeUp() {
    if (formKey.currentState!.validate()) {
      isLoading = true;

      authMethods.SignUpWithEmailPassword(emailTEC.text, passwordTEC.text)
          .then((val) {
        if (kDebugMode) {
          print("$val");
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Sign-up"),
        ),
      ),
      body: isLoading
          ? Center(
              child: Container(
                child: CircularProgressIndicator(),
              ),
            )
          : SingleChildScrollView(
              child: Container(
                height:
                    MediaQuery.of(context).size.height - Dimensions.ratio * 100,
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Form(
                      key: formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            validator: (v) {
                              return v!.length > 10 || v.length < 5 || v.isEmpty
                                  ? "Invalid username"
                                  : null;
                            },
                            controller: usernameTEC,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              hintText: "Username",
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            validator: (v) {
                              return RegExp(
                                          r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$")
                                      .hasMatch(v!)
                                  ? null
                                  : "enter valid email";
                            },
                            controller: emailTEC,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              hintText: "Email",
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            validator: (v) {
                              return v!.length > 6
                                  ? null
                                  : "minimum password length is 6";
                            },
                            controller: passwordTEC,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              hintText: "password",
                              helperText:
                                  "Should be at least 6 characters long",
                            ),
                          ),
                        ],
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
                        signMeUp();
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
                        child: Text("SIGN UP"),
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
                      child: Text("SIGN UP WITH GOOGLE"),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text("Already a User? Sign in Now"),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
