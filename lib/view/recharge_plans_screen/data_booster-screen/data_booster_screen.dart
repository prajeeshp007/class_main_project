import 'package:class_main_project/dummy_db.dart';
import 'package:class_main_project/utils/constance/color_constance.dart';
import 'package:class_main_project/view/recharge_plans_screen/widgets/databooster_card.dart';
import 'package:flutter/material.dart';

class DataBoosterScreen extends StatelessWidget {
  const DataBoosterScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Data Add-On (4)',
              style: TextStyle(
                  color: ColorConstance.mainblack,
                  fontWeight: FontWeight.w900,
                  fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => DataboosterCard(
                    addonamount: DummyDb.rechargecardplansaddon[index]
                        ['amount'],
                    addonvalidity: DummyDb.rechargecardplansaddon[index]
                        ['validity'],
                    addondata: DummyDb.rechargecardplansaddon[index]['data']),
                separatorBuilder: (context, index) => SizedBox(
                      height: 10,
                    ),
                itemCount: DummyDb.rechargecardplansaddon.length),
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
