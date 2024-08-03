import 'package:class_main_project/dummy_db.dart';
import 'package:class_main_project/utils/constance/color_constance.dart';
import 'package:class_main_project/view/recharge_plans_screen/widgets/recharge_cards_container_screen.dart';
import 'package:flutter/material.dart';

class RechargeScreen extends StatelessWidget {
  const RechargeScreen({super.key, this.customplans});
  final customplans;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
              width: double.infinity,
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          DummyDb.plans[index],
                          style: TextStyle(
                              color: ColorConstance.mainblack, fontSize: 20),
                        ),
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 10,
                      ),
                  itemCount: 5),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Recommended Plans',
              style: TextStyle(
                  color: ColorConstance.mainblack,
                  fontWeight: FontWeight.w900,
                  fontSize: 25),
            ),
            SizedBox(
              height: 10,
            ),
            RechargeCardsContainerScreen(
              redcontainer: DummyDb.rechargecardplans[1]['redcontainer'],
              planamount: DummyDb.rechargecardplans[1]['amount'],
              planvalidity: DummyDb.rechargecardplans[1]['validity'],
              perday: DummyDb.rechargecardplans[1]['data'],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Top Trending True 5G Unlimited Plans (9)',
              style: TextStyle(
                  color: ColorConstance.mainblack,
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 9,
              itemBuilder: (context, index) => RechargeCardsContainerScreen(
                redcontainer: DummyDb.rechargecardplans[index]['redcontainer'],
                planamount: DummyDb.rechargecardplans[index]['amount'],
                planvalidity: DummyDb.rechargecardplans[index]['validity'],
                perday: DummyDb.rechargecardplans[index]['data'],
              ),
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 10,
                );
              },
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
      ),
    );
  }
}
