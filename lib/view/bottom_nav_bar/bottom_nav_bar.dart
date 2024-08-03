import 'package:class_main_project/utils/constance/color_constance.dart';
import 'package:class_main_project/view/home_screen/home_screen.dart';
import 'package:class_main_project/view/jio_care_screen/jio_care_screen.dart';
import 'package:class_main_project/view/jio_tunes_screen/jio_tunes_screen.dart';
import 'package:class_main_project/view/menu_screen/menu_screen.dart';
import 'package:class_main_project/view/recharge_plans_screen/recharge_plans_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedindex = 0;
  List<Widget> myscreen = [
    HomeScreen(),
    RechargePlansScreen(),
    JioTunesScreen(),
    JioCareScreen(),
    MenuScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myscreen[selectedindex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: ColorConstance.mainblack,
          unselectedItemColor: Color.fromARGB(255, 79, 77, 77),
          currentIndex: selectedindex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.child_care_outlined,
                ),
                label: 'My Jio'),
            BottomNavigationBarItem(
              icon: Icon(Icons.currency_rupee),
              label: 'Recharge',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.music_video_sharp), label: 'Jio Tunes'),
            BottomNavigationBarItem(
                icon: Icon(Icons.headset_mic_rounded), label: 'Jio Care'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu')
          ],
          onTap: (value) {
            selectedindex = value;
            setState(() {});
          },
        ),
      ),
    );
  }
}
