import 'package:class_main_project/dummy_db.dart';
import 'package:class_main_project/utils/constance/color_constance.dart';
import 'package:class_main_project/view/recharge_plans_screen/widgets/recharge_cards_container_screen.dart';
import 'package:flutter/material.dart';

class AnnualPlanScreen extends StatelessWidget {
  const AnnualPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Annual Plans (2)',
            style: TextStyle(
                color: ColorConstance.mainblack,
                fontWeight: FontWeight.w900,
                fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) => RechargeCardsContainerScreen(
                    redcontainer: DummyDb.rechargecardplansannualplan[index]
                        ['redcontainer'],
                    planamount: DummyDb.rechargecardplansannualplan[index]
                        ['amount'],
                    planvalidity: DummyDb.rechargecardplansannualplan[index]
                        ['validity'],
                    perday: DummyDb.rechargecardplansannualplan[index]['data']),
                separatorBuilder: (context, index) => SizedBox(
                      height: 10,
                    ),
                itemCount: DummyDb.rechargecardplansannualplan.length),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
              child: Text(
            'Terms & Conditions',
            style: TextStyle(
                fontSize: 17,
                color: ColorConstance.mainblue,
                fontWeight: FontWeight.w700),
          ))
        ],
      ),
    );
  }
}
