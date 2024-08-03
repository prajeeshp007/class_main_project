import 'package:class_main_project/utils/constance/color_constance.dart';
import 'package:class_main_project/view/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _otpController = TextEditingController();
  final List<String> _otpDigits = ['', '', '', '', '', ''];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstance.mainblue,
        leading: Icon(
          Icons.keyboard_arrow_left_outlined,
          color: ColorConstance.mainwhite,
        ),
        centerTitle: false,
        title: Text(
          'Login',
          style: TextStyle(color: ColorConstance.mainwhite),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Verify your identity',
              style: TextStyle(
                  color: ColorConstance.mainblack,
                  fontWeight: FontWeight.w900,
                  fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Enter the OTP send to 9*7****961 number',
              style: TextStyle(
                  color: ColorConstance.mainblack,
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Edit number',
              style: TextStyle(
                  color: ColorConstance.mainblue,
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _otpDigits.map((digit) {
                return Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorConstance.mainblack),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      digit,
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                );
              }).toList(),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _otpController,
              maxLength: 6,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _otpDigits.clear();
                  for (int i = 0; i < value.length; i++) {
                    _otpDigits.add(value[i]);
                  }
                  while (_otpDigits.length < 6) {
                    _otpDigits.add('');
                  }
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter OTP',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Resend OTP in 00:09',
                  style: TextStyle(
                      color: ColorConstance.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.sync,
                      color: ColorConstance.mainblue,
                    ),
                    Text(
                      'We are trying to fetch your OTP',
                      style: TextStyle(
                          color: ColorConstance.mainblack,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ],
            ),
            Spacer(),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavBar(),
                    ));
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: ColorConstance.mainblue,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  textAlign: TextAlign.center,
                  'Submit',
                  style:
                      TextStyle(color: ColorConstance.mainwhite, fontSize: 25),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
