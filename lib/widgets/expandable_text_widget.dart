import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_foodz/utils/colors.dart';
import 'package:go_foodz/widgets/small%20text.dart';

import '../utils/dimensions.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String hiddenHalf;

  bool hiddenText = true;
  double textHeight = Dimensions.screenHeight / 8;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      hiddenHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      hiddenHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: hiddenHalf.isEmpty
            ? SmallText(
                text: firstHalf,
                size: Dimensions.ratio * 15,
                color: AppColors.paraColor,
              )
            : Column(
                children: [
                  SmallText(
                    text: hiddenText
                        ? (firstHalf + "...")
                        : (firstHalf + hiddenHalf),
                    size: Dimensions.ratio * 15,
                    color: AppColors.paraColor,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        hiddenText = !hiddenText;
                      });
                    },
                    child: Row(
                      children: [
                        SmallText(
                          text: hiddenText ? ("Show More ") : ("Hide"),
                          color: AppColors.mainColor,
                          size: Dimensions.ratio * 15,
                        ),
                        Icon(
                          hiddenText
                              ? (Icons.arrow_drop_down)
                              : (Icons.arrow_drop_up),
                          color: AppColors.mainColor,
                        ),
                      ],
                    ),
                  )
                ],
              ));
  }
}
