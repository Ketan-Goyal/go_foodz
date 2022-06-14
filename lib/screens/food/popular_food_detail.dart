import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_foodz/utils/dimensions.dart';
import 'package:go_foodz/widgets/app_icon.dart';

import '../../utils/colors.dart';
import '../../widgets/IconAndTextWidget.dart';
import '../../widgets/big_text.dart';
import '../../widgets/small text.dart';

class PopularFoodDetails extends StatelessWidget {
  const PopularFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.ratio * 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/food2.jpg"),
                ),
              ),
            ),
          ),
          Positioned(
            top: Dimensions.ratio * 30,
            left: Dimensions.ratio * 15,
            right: Dimensions.ratio * 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.chevron_left),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: Dimensions.ratio * 260,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(
                  left: Dimensions.ratio * 20,
                  right: Dimensions.ratio * 20,
                  top: Dimensions.height20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.rad20),
                      topLeft: Radius.circular(Dimensions.rad20)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "Pindi Chhole Bhature"),
                  SizedBox(height: Dimensions.height10),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Wrap(
                        children: List.generate(
                          5,
                          (index) => Icon(
                            Icons.star,
                            color: AppColors.mainColor,
                            size: Dimensions.ratio * 15,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Dimensions.height10,
                      ),
                      SmallText(
                        text: "4.5",
                      ),
                      SizedBox(
                        width: Dimensions.height10,
                      ),
                      SmallText(text: "1287"),
                      SizedBox(
                        width: Dimensions.height10,
                      ),
                      SmallText(text: "comments"),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      iconsAndTextWidget(
                        icon: Icons.circle_sharp,
                        iconColor: AppColors.iconColor1,
                        text: "Veg",
                      ),
                      SizedBox(
                        width: Dimensions.height10,
                      ),
                      iconsAndTextWidget(
                        icon: Icons.access_time_sharp,
                        iconColor: AppColors.iconColor2,
                        text: "32 mins",
                      ),
                      SizedBox(
                        width: Dimensions.height10,
                      ),
                      iconsAndTextWidget(
                        icon: Icons.location_on_sharp,
                        iconColor: AppColors.mainColor,
                        text: "2Kms",
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
