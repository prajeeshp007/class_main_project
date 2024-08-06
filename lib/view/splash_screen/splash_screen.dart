import 'package:class_main_project/utils/constance/color_constance.dart';
import 'package:class_main_project/utils/constance/image_constance.dart';

import 'package:class_main_project/view/login_screen/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then(
      (value) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            ));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstance.mainblue,
      body: Center(
        child: CircleAvatar(
            radius: 150,
            child: Image.asset(fit: BoxFit.cover, ImageConstance.LOGO_PNG)),
      ),
    );
  }
}
