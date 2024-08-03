import 'package:class_main_project/utils/constance/color_constance.dart';
import 'package:flutter/material.dart';

class RechargeCardsContainerScreen extends StatelessWidget {
  const RechargeCardsContainerScreen(
      {super.key,
      required this.redcontainer,
      required this.planamount,
      required this.planvalidity,
      required this.perday});

  final String redcontainer, planamount, planvalidity, perday;

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                decoration: BoxDecoration(
                    color: ColorConstance.mainred,
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  redcontainer,
                  style: TextStyle(
                    fontSize: 15,
                    color: ColorConstance.mainwhite,
                  ),
                ),
              ),
              Text(
                'TRUE 5G',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: ColorConstance.mainred,
                ),
              ),
            ],
          ),
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
                planamount,
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
                    planvalidity,
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
                    'Data',
                    style: TextStyle(
                        color: ColorConstance.mainblack,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                  Text(
                    perday,
                    style: TextStyle(
                        color: ColorConstance.mainblack,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'subscriptions',
                    style: TextStyle(
                        color: ColorConstance.mainblack,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.red,
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Color.fromARGB(255, 217, 44, 197),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('+1')
                    ],
                  )
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
