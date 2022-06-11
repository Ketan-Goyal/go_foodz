import 'package:flutter/material.dart';
import 'package:go_foodz/colors.dart';
import 'package:go_foodz/widgets/IconAndTextWidget.dart';
import 'package:go_foodz/widgets/big_text.dart';
import 'package:go_foodz/widgets/small%20text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.95);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      color: Colors.blue,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(children: [
      Container(
        height: 200,
        margin: EdgeInsets.only(left: 5, right: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven ? Color(0xFFffd379) : Color(0xFFfcab88),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/food1.jpg"))),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 120,
          margin: EdgeInsets.only(left: 25, right: 25, bottom: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          child: Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigText(text: "The Classic Pizza"),
                SizedBox(height: 10),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(
                      children: List.generate(
                        5,
                        (index) => Icon(
                          Icons.star,
                          color: AppColors.mainColor,
                          size: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SmallText(
                      text: "4.5",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SmallText(text: "1287"),
                    SizedBox(
                      width: 10,
                    ),
                    SmallText(text: "comments"),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    iconsAndTextWidget(
                      icon: Icons.circle_sharp,
                      iconColor: AppColors.iconColor1,
                      text: "Veg",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    iconsAndTextWidget(
                      icon: Icons.access_time_sharp,
                      iconColor: AppColors.iconColor2,
                      text: "32 mins",
                    ),
                    SizedBox(
                      width: 10,
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
      ),
    ]);
  }
}
