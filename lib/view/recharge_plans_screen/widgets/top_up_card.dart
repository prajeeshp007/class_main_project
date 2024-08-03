import 'package:class_main_project/utils/constance/color_constance.dart';
import 'package:flutter/material.dart';

class TopUpCard extends StatelessWidget {
  const TopUpCard(
      {super.key,
      required this.topupamount,
      required this.topupvalidity,
      required this.topuptalktime});
  final String topupamount, topupvalidity, topuptalktime;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 1)),
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Icon(
                Icons.currency_rupee_sharp,
                color: ColorConstance.mainblack,
              ),
              Text(
                topupamount,
                style: TextStyle(
                    color: ColorConstance.mainblack,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              Spacer(),
              Column(
                children: [
                  Text(
                    'View',
                    style: TextStyle(color: Color.fromARGB(255, 6, 85, 211)),
                  ),
                  Text(
                    'details',
                    style: TextStyle(color: Colors.blue.shade900),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: ColorConstance.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Validity',
                    style: TextStyle(
                        color: ColorConstance.mainblack,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                  Text(
                    topupvalidity,
                    style: TextStyle(
                        color: ColorConstance.mainblack,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Talktime',
                    style: TextStyle(
                        color: ColorConstance.mainblack,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                  Text(
                    topuptalktime,
                    style: TextStyle(
                        color: ColorConstance.mainblack,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 17, 17, 217),
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              textAlign: TextAlign.center,
              'Recharge',
              style: TextStyle(
                  color: ColorConstance.mainwhite,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          )
        ],
      ),
    );
  }
}
