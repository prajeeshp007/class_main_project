import 'package:class_main_project/utils/constance/color_constance.dart';
import 'package:class_main_project/view/otp_screen/otp_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: ColorConstance.mainblue,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Expanded(
          child: Column(
            children: [
              Text(
                'Log in to MyJIO',
                style: TextStyle(
                    color: ColorConstance.mainblack,
                    fontSize: 50,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border:
                            Border.all(width: 0, color: ColorConstance.grey)),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: ColorConstance.mainblue,
                          ),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Mobile',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: ColorConstance.mainwhite),
                              )),
                        ),
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'JioFiber',
                                style: TextStyle(fontSize: 25),
                              )),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    label: Text('Enter mobile number'),
                    suffixIcon: Icon(Icons.info_outline)),
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'by continuing,you agree to our Terms & conditions and privacy policy.',
                    style: TextStyle(
                        color: ColorConstance.mainblue,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OtpScreen(),
                          ));
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.green,
                          content: Text('OTP Send Successfully')));
                    },
                    child: Container(
                      width: double.maxFinite,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          color: ColorConstance.mainblue,
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        "Generate OTP",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: ColorConstance.mainwhite,
                            fontSize: 25,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Other login options',
                    style: TextStyle(
                        color: ColorConstance.mainblue,
                        fontSize: 25,
                        fontWeight: FontWeight.w700),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
