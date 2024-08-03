import 'package:class_main_project/utils/constance/color_constance.dart';
import 'package:flutter/material.dart';

class ListTileCard extends StatelessWidget {
  const ListTileCard(
      {super.key,
      this.customText,
      this.customicon,
      this.havearrowdown = false});
  final customText;
  final customicon;
  final bool havearrowdown;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.lightBlue.shade50,
        child: Icon(customicon),
      ),
      title: Text(
        customText,
        style: TextStyle(
            color: ColorConstance.mainblack, fontWeight: FontWeight.w500),
      ),
      trailing: Visibility(
        visible: havearrowdown,
        child: Icon(
          Icons.keyboard_arrow_down_outlined,
          color: ColorConstance.mainblue,
        ),
      ),
    );
  }
}
