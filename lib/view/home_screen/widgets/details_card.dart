import 'package:class_main_project/dummy_db.dart';
import 'package:class_main_project/utils/constance/color_constance.dart';
import 'package:flutter/material.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({
    super.key,
    this.haveratingcard = false,
    required this.posterimages,
    this.postertitle = false,
    this.iscrcle = false,
    this.coustomheight = 150,
    this.coustomwidth = 120,
  });
  final bool haveratingcard;
  final posterimages;
  final bool postertitle;
  final bool iscrcle;
  final double coustomheight;
  final double coustomwidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 1),
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: coustomheight,
                            width: coustomwidth,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(posterimages[index])),
                                color: ColorConstance.mainred,
                                shape: iscrcle
                                    ? BoxShape.circle
                                    : BoxShape.rectangle),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Visibility(
                            visible: postertitle,
                            child: Text(
                              DummyDb.titlecard[index],
                              style: TextStyle(
                                  color: ColorConstance.mainblack,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                          Visibility(
                            visible: haveratingcard,
                            child: Text(
                              DummyDb.pricecard[index],
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      width: 7,
                    ),
                itemCount: DummyDb.detailscard.length),
          ),
        ],
      ),
    );
  }
}
