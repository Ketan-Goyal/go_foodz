import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_foodz/utils/colors.dart';
import 'package:go_foodz/utils/dimensions.dart';
import 'package:go_foodz/widgets/expandable_text_widget.dart';

import '../../widgets/app_icon.dart';
import '../../widgets/big_text.dart';

class RecommendedFoodDetalis extends StatelessWidget {
  const RecommendedFoodDetalis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: Dimensions.ratio * 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(35),
              child: Container(
                padding: EdgeInsets.all(Dimensions.ratio * 10),
                child: Center(
                  child: BigText(
                    text: "Shahi Raj Kachori",
                    size: Dimensions.ratio * 26,
                  ),
                ),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.ratio * 20),
                    topLeft: Radius.circular(Dimensions.ratio * 20),
                  ),
                ),
              ),
            ),
            pinned: true,
            expandedHeight: 240,
            backgroundColor: AppColors.yellowColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/food3.jpg',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(
                    text:
                        "Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!Raj Kachori- crispy deep fried kachori filled with potatoes, moong dal, yogurt, spices and chutneys! Topped with cilantro, sev, pomegranate this is the ultimate indulgence!",
                  ),
                  margin:
                      EdgeInsets.symmetric(horizontal: Dimensions.ratio * 16),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: Dimensions.ratio * 50,
                vertical: Dimensions.ratio * 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.remove,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  iconSize: Dimensions.ratio * 24,
                ),
                BigText(
                  text: "₹179 " + " X " + " 0",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.ratio * 26,
                ),
                AppIcon(
                  icon: Icons.add,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  iconSize: Dimensions.ratio * 24,
                ),
              ],
            ),
          ),
          Container(
            height: Dimensions.ratio * 90,
            padding: EdgeInsets.only(
                top: Dimensions.ratio * 16,
                bottom: Dimensions.ratio * 16,
                left: Dimensions.ratio * 16,
                right: Dimensions.ratio * 16),
            decoration: BoxDecoration(
              color: AppColors.buttonbackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.ratio * 32),
                topRight: Radius.circular(Dimensions.ratio * 32),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(Dimensions.ratio * 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.ratio * 16),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.remove,
                        color: AppColors.signColor,
                      ),
                      SizedBox(
                        width: Dimensions.ratio * 5,
                      ),
                      BigText(text: "0"),
                      SizedBox(
                        width: Dimensions.ratio * 5,
                      ),
                      Icon(
                        Icons.add,
                        color: AppColors.signColor,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(Dimensions.ratio * 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.ratio * 16),
                    color: AppColors.mainColor,
                  ),
                  child: BigText(
                    text: " ₹179 | Add to cart",
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
