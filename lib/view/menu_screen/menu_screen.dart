import 'package:class_main_project/dummy_db.dart';
import 'package:class_main_project/utils/constance/color_constance.dart';
import 'package:class_main_project/view/menu_screen/widget/list_tile_card.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstance.mainblue,
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: 200,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 16, 3, 65),
              borderRadius: BorderRadius.circular(20),
              border: Border.all()),
          child: Text(
            'search',
            style: TextStyle(
                color: ColorConstance.mainwhite,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
        ),
        actions: [
          Icon(
            Icons.settings_voice_sharp,
            color: ColorConstance.mainwhite,
          ),
          SizedBox(
            width: 30,
          ),
          Icon(
            Icons.qr_code_scanner_outlined,
            color: ColorConstance.mainwhite,
          ),
          SizedBox(
            width: 30,
          ),
          Icon(
            Icons.notification_add,
            color: ColorConstance.mainwhite,
          ),
          SizedBox(
            width: 30,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    child: Text(
                      'PP',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Prajeesh P",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ColorConstance.mainblack,
                            fontSize: 20),
                      ),
                      Text(
                        "9074230361",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: ColorConstance.grey,
                            fontSize: 20),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.keyboard_arrow_right_rounded,
                    color: ColorConstance.mainblue,
                    size: 40,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Shorcuts',
                    style: TextStyle(
                        color: ColorConstance.grey,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Edit',
                    style: TextStyle(
                        color: ColorConstance.mainblue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) => Container(
                  height: 120,
                  width: 170,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 0)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: ColorConstance.mainblue,
                        radius: 15,
                        child: Icon(
                          DummyDb.Shorcuts[index]['icon'],
                          color: ColorConstance.mainwhite,
                        ),
                      ),
                      Text(
                        DummyDb.Shorcuts[index]['text'],
                        style: TextStyle(
                            color: ColorConstance.mainblack,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Explore Jio',
                style: TextStyle(
                    color: ColorConstance.grey,
                    fontSize: 25,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.separated(
                itemCount: DummyDb.explorejio.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => ListTileCard(
                  havearrowdown: true,
                  customText: DummyDb.explorejio[index]['text'],
                  customicon: DummyDb.explorejio[index]['icon'],
                ),
                separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'More From JIo',
                style: TextStyle(
                    color: ColorConstance.grey,
                    fontSize: 25,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => ListTileCard(
                        havearrowdown: false,
                        customText: DummyDb.morefromjio[index]['text'],
                        customicon: DummyDb.morefromjio[index]['icon'],
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 10,
                      ),
                  itemCount: DummyDb.morefromjio.length),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  'App Version 7.0.67',
                  style: TextStyle(
                      color: ColorConstance.mainblack,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
