import 'package:class_main_project/utils/constance/color_constance.dart';
import 'package:flutter/material.dart';

class ContainerCard extends StatelessWidget {
  const ContainerCard(
      {super.key,
      required this.customtext,
      required this.titletext,
      required this.subtitle,
      required this.imageurl});
  final String customtext;
  final String titletext;
  final String subtitle;
  final String imageurl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(width: 0),
          borderRadius: BorderRadius.circular(10),
          color: Colors.lightBlue.shade100,
        ),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: ColorConstance.mainblue,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(imageurl),
                  )),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  customtext,
                  style: TextStyle(
                      color: ColorConstance.mainblack,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Text(
                  titletext,
                  style: TextStyle(
                    color: ColorConstance.mainblack,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: ColorConstance.mainblack,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
