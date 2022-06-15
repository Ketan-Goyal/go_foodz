import 'package:flutter/material.dart';
import 'package:go_foodz/utils/dimensions.dart';
import 'package:go_foodz/widgets/app_Column.dart';
import 'package:go_foodz/widgets/app_icon.dart';
import 'package:go_foodz/widgets/big_text.dart';
import 'package:go_foodz/widgets/expandable_text_widget.dart';

import '../../utils/colors.dart';

class PopularFoodDetails extends StatelessWidget {
  const PopularFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  AppColumn(
                    text: "Pindi Chhole Bhature",
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  BigText(
                    text: "Description",
                  ),
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                        text:
                            "Chole bhature (Hindi: छोले भटूरे) is a food dish popular in the Northern areas of the Indian subcontinent.[1] It is a combination of chana masala (spicy white chickpeas) and bhatura/puri, a fried bread made from maida.[2][3] Although it is known as a typical Punjabi dish,[4] there are varied claims around the origin of dish. Chole bhature is often eaten as a breakfast dish, sometimes accompanied with lassi. It can also be street food or a complete meal and may be accompanied with onions, pickled carrots, green chutney or achaar.[5] Chole bhature (Hindi: छोले भटूरे) is a food dish popular in the Northern areas of the Indian subcontinent.[1] It is a combination of chana masala (spicy white chickpeas) and bhatura/puri, a fried bread made from maida.[2][3] Although it is known as a typical Punjabi dish,[4] there are varied claims around the origin of dish. Chole bhature is often eaten as a breakfast dish, sometimes accompanied with lassi. It can also be street food or a complete meal and may be accompanied with onions, pickled carrots, green chutney or achaar.[5] Chole bhature (Hindi: छोले भटूरे) is a food dish popular in the Northern areas of the Indian subcontinent.[1] It is a combination of chana masala (spicy white chickpeas) and bhatura/puri, a fried bread made from maida.[2][3] Although it is known as a typical Punjabi dish,[4] there are varied claims around the origin of dish. Chole bhature is often eaten as a breakfast dish, sometimes accompanied with lassi. It can also be street food or a complete meal and may be accompanied with onions, pickled carrots, green chutney or achaar.[5] Chole bhature (Hindi: छोले भटूरे) is a food dish popular in the Northern areas of the Indian subcontinent.[1] It is a combination of chana masala (spicy white chickpeas) and bhatura/puri, a fried bread made from maida.[2][3] Although it is known as a typical Punjabi dish,[4] there are varied claims around the origin of dish. Chole bhature is often eaten as a breakfast dish, sometimes accompanied with lassi. It can also be street food or a complete meal and may be accompanied with onions, pickled carrots, green chutney or achaar.[5]",
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.ratio * 100,
        padding: EdgeInsets.only(
            top: Dimensions.ratio * 24,
            bottom: Dimensions.ratio * 24,
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
                text: " \$10 | Add to cart",
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
