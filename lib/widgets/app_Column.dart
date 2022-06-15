import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_foodz/widgets/small%20text.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'IconAndTextWidget.dart';
import 'big_text.dart';

class AppColumn extends StatelessWidget {
  final String text;

  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimensions.ratio * 26,
        ),
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
    );
  }
}
