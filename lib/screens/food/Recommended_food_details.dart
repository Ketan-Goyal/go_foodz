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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppIcon(
                icon: Icons.remove,
                backgroundColor: AppColors.mainColor,
                iconColor: Colors.white,
              ),
              AppIcon(
                icon: Icons.add,
                backgroundColor: AppColors.mainColor,
                iconColor: Colors.white,
              ),
            ],
          )
        ],
      ),
    );
  }
}
