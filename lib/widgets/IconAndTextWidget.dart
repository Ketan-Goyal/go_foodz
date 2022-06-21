import 'package:flutter/cupertino.dart';

import '../utils/dimensions.dart';

class iconsAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  final Color iconColor;
  const iconsAndTextWidget(
      {Key? key,
      required this.icon,
      required this.text,
      required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: Dimensions.ratiow * 26,
        ),
        SizedBox(
          width: 5,
        ),
        Text(text),
      ],
    );
  }
}
