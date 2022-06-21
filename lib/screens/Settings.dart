import 'package:flutter/material.dart';
import 'package:go_foodz/screens/signUp.dart';
import 'package:go_foodz/services/Auth.dart';
import 'package:go_foodz/utils/colors.dart';
import 'package:go_foodz/utils/dimensions.dart';
import 'package:go_foodz/widgets/big_text.dart';

class AppSettings extends StatefulWidget {
  const AppSettings({Key? key}) : super(key: key);

  @override
  State<AppSettings> createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {
  AuthMethods authMethods = new AuthMethods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: Center(child: Text("Settings")),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.ratio * 15,
                      vertical: Dimensions.ratio * 5),
                  height: Dimensions.ratio * 60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.person,
                                size: 28,
                              ),
                              SizedBox(
                                width: Dimensions.ratio * 10,
                              ),
                              BigText(text: "Profile"),
                            ],
                          ),
                          Icon(Icons.arrow_right_alt),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Divider(
                        height: 2,
                        color: AppColors.mainBlackColor,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.ratio * 15,
                      vertical: Dimensions.ratio * 5),
                  height: Dimensions.ratio * 60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.shopping_bag_outlined,
                                size: 28,
                              ),
                              SizedBox(
                                width: Dimensions.ratio * 10,
                              ),
                              BigText(text: "My Orders"),
                            ],
                          ),
                          Icon(Icons.arrow_right_alt),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Divider(
                        height: 2,
                        color: AppColors.mainBlackColor,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.ratio * 15,
                      vertical: Dimensions.ratio * 5),
                  height: Dimensions.ratio * 60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.edit_location_alt,
                                size: 28,
                              ),
                              SizedBox(
                                width: Dimensions.ratio * 10,
                              ),
                              BigText(text: "Addresses"),
                            ],
                          ),
                          Icon(Icons.arrow_right_alt),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Divider(
                        height: 2,
                        color: AppColors.mainBlackColor,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.ratio * 15,
                      vertical: Dimensions.ratio * 5),
                  height: Dimensions.ratio * 60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.help_center,
                                size: 28,
                              ),
                              SizedBox(
                                width: Dimensions.ratio * 10,
                              ),
                              BigText(text: "Help"),
                            ],
                          ),
                          Icon(Icons.arrow_right_alt),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Divider(
                        height: 2,
                        color: AppColors.mainBlackColor,
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    authMethods.signOut();
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.buttonbackgroundColor,
                          borderRadius:
                              BorderRadius.circular(Dimensions.ratio * 10)),
                      padding: EdgeInsets.all(Dimensions.ratio * 10),
                      child: Text(
                        "Sign Out",
                        style: TextStyle(color: AppColors.mainBlackColor),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
