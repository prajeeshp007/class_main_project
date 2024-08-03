import 'package:class_main_project/dummy_db.dart';
import 'package:class_main_project/utils/constance/color_constance.dart';
import 'package:class_main_project/view/recharge_plans_screen/annual_plan_screen/annual_plan_screen.dart';
import 'package:class_main_project/view/recharge_plans_screen/data_booster-screen/data_booster_screen.dart';
import 'package:class_main_project/view/recharge_plans_screen/recharge_tab_screen/recharge_tab_screen.dart';
import 'package:class_main_project/view/recharge_plans_screen/top_up_screen/top_up_screen.dart';
import 'package:class_main_project/view/recharge_plans_screen/true5g_tab_screen/true5g_tab_screen.dart';
import 'package:flutter/material.dart';

class RechargePlansScreen extends StatefulWidget {
  const RechargePlansScreen({super.key});

  @override
  State<RechargePlansScreen> createState() => _RechargePlansScreenState();
}

class _RechargePlansScreenState extends State<RechargePlansScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstance.mainblue,
          leading: Icon(
            Icons.keyboard_arrow_left,
            color: ColorConstance.mainwhite,
            size: 40,
          ),
          centerTitle: false,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Recharge 9074230961',
                style: TextStyle(
                    color: ColorConstance.mainwhite,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
              Text(
                'Change number',
                style: TextStyle(
                  fontSize: 18,
                  decorationColor: ColorConstance.grey,
                  decorationThickness: 1,
                  decoration: TextDecoration.underline,
                  color: ColorConstance.grey,
                ),
              ),
            ],
          ),
          actions: [
            Icon(
              Icons.search,
              color: ColorConstance.mainwhite,
              size: 30,
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    color: Color.fromARGB(255, 2, 13, 95),
                    child: TabBar(
                      isScrollable: true,
                      unselectedLabelColor: ColorConstance.mainwhite,
                      labelColor: ColorConstance.mainwhite,
                      indicatorColor: Colors.white,
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabs: [
                        Tab(text: 'popular plans'),
                        Tab(
                          text: 'Truely 5G Unlimited ',
                        ),
                        Tab(
                          text: 'Data Booster',
                        ),
                        Tab(
                          text: 'Top Up',
                        ),
                        Tab(
                          text: 'Annual Plans',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                RechargeScreen(
                  customplans: DummyDb.plans,
                ),
                True5gTabScreen(),
                DataBoosterScreen(),
                TopUpScreen(),
                AnnualPlanScreen(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
