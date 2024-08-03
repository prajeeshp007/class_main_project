import 'package:class_main_project/dummy_db.dart';
import 'package:class_main_project/utils/constance/color_constance.dart';
import 'package:class_main_project/view/recharge_plans_screen/widgets/top_up_card.dart';
import 'package:flutter/material.dart';

class TopUpScreen extends StatelessWidget {
  const TopUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'TOP-UP VOUCHER (6)',
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
                itemBuilder: (context, index) => TopUpCard(
                    topupamount: DummyDb.rechargecardplanstopup[index]
                        ['amount'],
                    topupvalidity: DummyDb.rechargecardplanstopup[index]
                        ['validity'],
                    topuptalktime: DummyDb.rechargecardplanstopup[index]
                        ['talktime']),
                separatorBuilder: (context, index) => SizedBox(
                      height: 10,
                    ),
                itemCount: 6),
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
