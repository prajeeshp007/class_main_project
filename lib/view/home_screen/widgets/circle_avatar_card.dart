import 'package:class_main_project/utils/constance/color_constance.dart';
import 'package:flutter/material.dart';

class CircleAvatarCard extends StatelessWidget {
  const CircleAvatarCard(
      {super.key,
      required this.customtext,
      this.backgroungcolors,
      this.customIcons,
      this.iconcolors});
  final String customtext;
  final backgroungcolors;
  final customIcons;
  final iconcolors;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            CircleAvatar(
              backgroundColor: backgroungcolors,
              radius: 25,
              child: Icon(
                customIcons,
                color: ColorConstance.mainwhite,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(customtext)
          ],
        ),
      ],
    );
  }
}
