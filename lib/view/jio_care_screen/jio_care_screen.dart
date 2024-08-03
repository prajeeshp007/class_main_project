import 'package:class_main_project/dummy_db.dart';
import 'package:class_main_project/utils/constance/color_constance.dart';
import 'package:flutter/material.dart';

class JioCareScreen extends StatelessWidget {
  const JioCareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorConstance.mainblue,
        child: Icon(
          Icons.mic,
          color: ColorConstance.mainwhite,
        ),
        onPressed: () {},
      ),
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
              'JioCare',
              style: TextStyle(
                  color: ColorConstance.mainwhite,
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
            Text(
              '90742330961',
              style: TextStyle(
                fontSize: 18,
                decorationColor: ColorConstance.grey,
                color: ColorConstance.mainwhite,
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Need Prompt Help? Check these options',
                style: TextStyle(
                    color: ColorConstance.mainblack,
                    fontWeight: FontWeight.w900,
                    fontSize: 30),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  decoration: BoxDecoration(
                      border: Border.all(width: 0),
                      borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                    leading: Icon(
                      Icons.mic,
                      color: ColorConstance.mainblue,
                      size: 35,
                    ),
                    title: Text(
                      'Speak To HelloJio',
                      style: TextStyle(
                          color: ColorConstance.mainblack,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    subtitle: Text(
                      'Troubleshoot with our vioce',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: ColorConstance.mainblue,
                      size: 35,
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  decoration: BoxDecoration(
                      border: Border.all(width: 0),
                      borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                    leading: Icon(
                      Icons.forum,
                      color: ColorConstance.mainblue,
                      size: 35,
                    ),
                    title: Text(
                      'Chat with us',
                      style: TextStyle(
                          color: ColorConstance.mainblack,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    subtitle: Text(
                      'Ask us anything',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: ColorConstance.mainblue,
                      size: 35,
                    ),
                  )),
              SizedBox(
                height: 30,
              ),
              Text(
                'Get quick support',
                style: TextStyle(
                    color: ColorConstance.mainblack,
                    fontWeight: FontWeight.w900,
                    fontSize: 30),
              ),
              QuickSuppoortContainer(),
              SizedBox(
                height: 30,
              ),
              Text(
                "Facing Problems? Let's troubleshoot",
                style: TextStyle(
                    color: ColorConstance.mainblack,
                    fontWeight: FontWeight.w900,
                    fontSize: 30),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(width: 0),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.signal_cellular_alt,
                        color: ColorConstance.mainblue,
                        size: 25,
                      ),
                      title: Text(
                        'My Internet speed is slow',
                        style: TextStyle(
                            color: ColorConstance.mainblack,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_right_outlined,
                        color: ColorConstance.mainblue,
                        size: 30,
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(
                        Icons.call,
                        color: ColorConstance.mainblue,
                        size: 25,
                      ),
                      title: Text(
                        'i am not able to make calls',
                        style: TextStyle(
                            color: ColorConstance.mainblack,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_right_outlined,
                        color: ColorConstance.mainblue,
                        size: 30,
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(
                        Icons.mobiledata_off_rounded,
                        color: ColorConstance.mainblue,
                        size: 25,
                      ),
                      title: Text(
                        'Know were i have used my data?',
                        style: TextStyle(
                            color: ColorConstance.mainblack,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_right_outlined,
                        color: ColorConstance.mainblue,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 0),
                      ),
                      child: Text(
                        textAlign: TextAlign.center,
                        'view more',
                        style: TextStyle(
                            color: ColorConstance.mainblue,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Select a category you need help with",
                      style: TextStyle(
                          color: ColorConstance.mainblack,
                          fontWeight: FontWeight.w900,
                          fontSize: 30),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 0)),
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: ColorConstance.mainblue,
                                    radius: 25,
                                    child: Icon(
                                      Icons.phone_android_sharp,
                                      color: ColorConstance.mainwhite,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Mobile')
                                ],
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.blue.shade400,
                                    radius: 25,
                                    child: Icon(
                                      Icons.router,
                                      color: ColorConstance.mainwhite,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('JioFiber'),
                                  SizedBox(
                                    width: 5,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.lightGreen.shade400,
                                    radius: 25,
                                    child: Icon(
                                      Icons.apps_outlined,
                                      color: ColorConstance.mainwhite,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('JioApps')
                                ],
                              ),
                            ],
                          ),
                        ])),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Frequently aked questions",
                style: TextStyle(
                    color: ColorConstance.mainblack,
                    fontWeight: FontWeight.w900,
                    fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    border: Border.all(width: 0),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => ListTile(
                              title: Text(
                                DummyDb.questions[index],
                                style: TextStyle(
                                    color: ColorConstance.mainblack,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17),
                              ),
                              trailing:
                                  Icon(Icons.keyboard_arrow_right_outlined),
                            ),
                        separatorBuilder: (context, index) => Divider(),
                        itemCount: DummyDb.questions.length),
                    Divider(),
                    Container(
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 0),
                      ),
                      child: Text(
                        textAlign: TextAlign.center,
                        'view more',
                        style: TextStyle(
                            color: ColorConstance.mainblue,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Helpful Tips",
                style: TextStyle(
                    color: ColorConstance.mainblack,
                    fontWeight: FontWeight.w900,
                    fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration: BoxDecoration(
                    border: Border.all(width: 0),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 350,
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                        itemBuilder: (context, index) => Column(
                          children: [
                            Container(
                              height: 120,
                              width: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        DummyDb.Helpfultips[index]['url'])),
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.red,
                              ),
                            ),
                            Text(
                              DummyDb.Helpfultips[index]['text'],
                              style: TextStyle(
                                  color: ColorConstance.mainblack,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 0),
                      ),
                      child: Text(
                        textAlign: TextAlign.center,
                        'View All',
                        style: TextStyle(
                            color: ColorConstance.mainblue,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget QuickSuppoortContainer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 0)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: ColorConstance.mainblue,
                    radius: 25,
                    child: Icon(
                      Icons.network_cell,
                      color: ColorConstance.mainwhite,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Interest for 5G')
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue.shade400,
                    radius: 25,
                    child: Icon(
                      Icons.location_on_outlined,
                      color: ColorConstance.mainwhite,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('5G coverage'),
                  SizedBox(
                    width: 5,
                  )
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.lightGreen.shade400,
                    radius: 25,
                    child: Icon(
                      Icons.phone_android,
                      color: ColorConstance.mainwhite,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('5G device check')
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: ColorConstance.mainblue,
                    radius: 25,
                    child: Icon(
                      Icons.local_shipping_sharp,
                      color: ColorConstance.mainwhite,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Track order')
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue.shade400,
                    radius: 25,
                    child: Icon(
                      Icons.insert_page_break,
                      color: ColorConstance.mainwhite,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Track Service'),
                  SizedBox(
                    width: 5,
                  )
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.lightGreen.shade400,
                    radius: 25,
                    child: Icon(
                      Icons.sim_card_outlined,
                      color: ColorConstance.mainwhite,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('eSim request')
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: ColorConstance.mainblue,
                    radius: 25,
                    child: Icon(
                      Icons.no_sim_outlined,
                      color: ColorConstance.mainwhite,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Block SIM')
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue.shade400,
                    radius: 25,
                    child: Icon(
                      Icons.contact_mail_outlined,
                      color: ColorConstance.mainwhite,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Get PUK code'),
                  SizedBox(
                    width: 5,
                  )
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.lightGreen.shade400,
                    radius: 25,
                    child: Icon(
                      Icons.notifications_off,
                      color: ColorConstance.mainwhite,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('DND')
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
