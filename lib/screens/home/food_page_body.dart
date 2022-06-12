import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_foodz/utils/colors.dart';
import 'package:go_foodz/widgets/IconAndTextWidget.dart';
import 'package:go_foodz/widgets/big_text.dart';
import 'package:go_foodz/widgets/small%20text.dart';

import '../../utils/dimensions.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var currPageValue = 0.0;
  var scaleFactor = 0.8;
  double height = Dimensions.pageViewController;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currPageValue = pageController.page!;
        debugPrint("page value is $currPageValue");
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("curr height is " + MediaQuery.of(context).size.height.toString());
    return Column(
      children: [
        Container(
          height: Dimensions.ratio * 290,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        new DotsIndicator(
          dotsCount: 5,
          position: currPageValue,
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        SizedBox(
          height: Dimensions.ratio * 15,
        ),
        //popular text
        Container(
          margin: EdgeInsets.only(left: Dimensions.ratio * 30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(child: BigText(text: "Popular")),
              SizedBox(
                width: Dimensions.ratio * 10,
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 3),
                  child: BigText(text: ".")),
              SizedBox(
                width: Dimensions.ratio * 10,
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: SmallText(text: "in your area")),
            ],
          ),
        ),
        //list
        ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                    left: Dimensions.ratio * 18,
                    right: Dimensions.ratio * 18,
                    bottom: Dimensions.ratio * 10),
                child: Row(
                  children: [
                    Container(
                      width: Dimensions.ratio * 120,
                      height: Dimensions.ratio * 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(Dimensions.ratio * 20),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/food0.jpg"),
                        ),
                      ),
                    ), //image section
                    Expanded(
                      child: Container(
                        height: Dimensions.ratio * 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.ratio * 20),
                            bottomRight: Radius.circular(Dimensions.ratio * 20),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(Dimensions.ratio * 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BigText(text: "The American Cheese Burger"),
                              SmallText(
                                  text:
                                      "With the overflow of cheese and veggies"),
                              SizedBox(
                                height: Dimensions.ratio * 2,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                    text: "18 mins",
                                  ),
                                  SizedBox(
                                    width: Dimensions.height10,
                                  ),
                                  iconsAndTextWidget(
                                    icon: Icons.location_on_sharp,
                                    iconColor: AppColors.mainColor,
                                    text: "1Kms",
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            })
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 mat = Matrix4.identity();
    if (index == currPageValue.floor()) {
      var currScale = 1 - (currPageValue - index) * (1 - scaleFactor);
      var currTrans = height * (1 - currScale) / 2;
      mat = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == currPageValue.floor() + 1) {
      var currScale =
          scaleFactor + (currPageValue - index + 1) * (1 - scaleFactor);
      var currTrans = height * (1 - currScale) / 2;
      mat = Matrix4.diagonal3Values(1, currScale, 1);
      mat = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == currPageValue.floor() - 1) {
      var currScale = 1 - (currPageValue - index) * (1 - scaleFactor);
      var currTrans = height * (1 - currScale) / 2;
      mat = Matrix4.diagonal3Values(1, currScale, 1);
      mat = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      mat = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, height * (1 - scaleFactor) / 2, 0);
    }

    return Transform(
      transform: mat,
      child: Stack(
        children: [
          Container(
            height: Dimensions.ratio * 200,
            margin: EdgeInsets.only(
                left: Dimensions.ratio * 5, right: Dimensions.ratio * 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.rad30),
                color: index.isEven ? Color(0xFFffd379) : Color(0xFFfcab88),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/food1.jpg"))),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.ratio * 110,
              margin: EdgeInsets.only(
                  left: 35, right: 35, bottom: Dimensions.height15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.rad20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFe8e8e8),
                    blurRadius: 5,
                    offset: Offset(0, 5),
                  ),
                  // BoxShadow(
                  //   color: Colors.white,
                  //   offset: Offset(-5, 0),
                  // ),
                  // BoxShadow(
                  //   color: Colors.white,
                  //   offset: Offset(5, 0),
                  // ),
                ],
              ),
              child: Container(
                padding: EdgeInsets.only(
                    left: Dimensions.ratio * 15,
                    right: Dimensions.ratio * 15,
                    top: Dimensions.ratio * 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: "The Classic Pizza"),
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
          ),
        ],
      ),
    );
  }
}
