import 'package:class_main_project/utils/constance/color_constance.dart';

import 'package:flutter/material.dart';

class JioTuneSonglist extends StatelessWidget {
  const JioTuneSonglist(
      {super.key,
      this.customtitle = '',
      this.havesongname = '',
      this.havemoviename = '',
      this.customheight = 170,
      this.customwidth = 120,
      this.customimage});
  final customtitle;
  final havesongname;
  final havemoviename;
  final double customheight;
  final double customwidth;
  final customimage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          customtitle,
          style: TextStyle(
              color: ColorConstance.mainblack,
              fontSize: 22,
              fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 210,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) => Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.red,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(customimage[index]))),
                        height: customheight,
                        width: customwidth,
                      ),
                      Text(
                        havesongname[index],
                        style: TextStyle(
                            color: ColorConstance.mainblack,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                      Text(havemoviename[index])
                    ],
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    width: 5,
                  ),
              itemCount: 5),
        )
      ],
    );
  }
}
