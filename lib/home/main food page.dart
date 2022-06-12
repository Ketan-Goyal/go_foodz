import 'package:flutter/material.dart';
import 'package:go_foodz/home/food_page_body.dart';
import 'package:go_foodz/utils/colors.dart';
import 'package:go_foodz/widgets/big_text.dart';
import 'package:go_foodz/widgets/small%20text.dart';

import '../utils/dimensions.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(
                  top: Dimensions.ratio * 35, bottom: Dimensions.ratio * 15),
              padding: EdgeInsets.only(
                  left: Dimensions.ratio * 20, right: Dimensions.ratio * 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "INDIA", color: AppColors.mainColor),
                      Row(children: [
                        SmallText(
                          text: "New Delhi",
                          color: Colors.black54,
                        ),
                        Icon(Icons.arrow_drop_down_rounded),
                      ]),
                    ],
                  ),
                  Center(
                    child: Container(
                      height: Dimensions.ratio * 38,
                      width: Dimensions.ratio * 38,
                      child: Icon(
                        Icons.search,
                        size: Dimensions.ratio * 24,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.ratio * 12),
                          color: AppColors.mainColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: SingleChildScrollView(child: FoodPageBody(),),),
        ],
      ),
    );
  }
}
