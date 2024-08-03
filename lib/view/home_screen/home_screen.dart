import 'package:class_main_project/dummy_db.dart';
import 'package:class_main_project/utils/constance/color_constance.dart';
import 'package:class_main_project/utils/constance/image_constance.dart';
import 'package:class_main_project/view/home_screen/widgets/container_card.dart';
import 'package:class_main_project/view/home_screen/widgets/details_card.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: circleAvatar1(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: circleAvatar2(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: circleAvatar3(),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 150,
              child: _addsContainer(),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: _userPlansCard(),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: _ContainerCaard(),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Trending Now',
                style: TextStyle(
                    color: ColorConstance.mainblack,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: _container2(),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'My CallerTune',
                style: TextStyle(
                    color: ColorConstance.mainblack,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            ContainerCard(
                customtext: 'make your caller smile',
                titletext: 'select from 1mn+',
                subtitle: 'songs',
                imageurl: AssetImage(ImageConstance.JIO_MUSIC).assetName),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Last Visited',
                style: TextStyle(
                    color: ColorConstance.mainblack,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: _card3(),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'JioFinance UPI',
                    style: TextStyle(
                        color: ColorConstance.mainblack,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(
                      color: ColorConstance.mainblue,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: _card4(),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Shop Amazing Deals',
                    style: TextStyle(
                        color: ColorConstance.mainblack,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'view all',
                    style: TextStyle(
                      color: ColorConstance.mainblue,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            DetailsCard(
              postertitle: true,
              haveratingcard: true,
              posterimages: DummyDb.detailscard,
              coustomheight: 150,
              coustomwidth: 150,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'LIVE TV',
                    style: TextStyle(
                        color: ColorConstance.mainblack,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'view all',
                    style: TextStyle(
                      color: ColorConstance.mainblue,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                padding: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.center,
                        colors: [Colors.black, Colors.white]),
                    color: ColorConstance.mainwhite,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DetailsCard(
                        coustomwidth: 400,
                        coustomheight: 200,
                        posterimages: DummyDb.livetvcard),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Text(
                        'Recommended',
                        style: TextStyle(
                            color: ColorConstance.mainwhite,
                            fontSize: 20,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    DetailsCard(
                      iscrcle: true,
                      posterimages: DummyDb.channelslogo,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Play & Win',
                    style: TextStyle(
                        color: ColorConstance.mainblack,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'view all',
                    style: TextStyle(
                      color: ColorConstance.mainblue,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            DetailsCard(
              posterimages: DummyDb.playandwin,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Music For You',
                    style: TextStyle(
                        color: ColorConstance.mainblack,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'view all',
                    style: TextStyle(
                      color: ColorConstance.mainblue,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: _MusicForYou(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Text(
                    'With Love,',
                    style: TextStyle(
                        color: ColorConstance.grey,
                        fontSize: 40,
                        fontWeight: FontWeight.w700),
                  ),
                  Text('From Jio.',
                      style: TextStyle(
                          color: ColorConstance.grey,
                          fontSize: 40,
                          fontWeight: FontWeight.w700))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _MusicForYou() {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              tileMode: TileMode.clamp,
              begin: Alignment.topCenter,
              end: Alignment.center,
              colors: [
                Color.fromARGB(255, 1, 45, 35),
                ColorConstance.mainwhite
              ]),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/image/th (7).jpeg')),
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'RAABTA SONG',
                    style: TextStyle(
                        color: ColorConstance.mainwhite,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'Raabta"Song by Pritam feat. Arijit Singh,',
                    style: TextStyle(
                        color: ColorConstance.mainwhite,
                        fontWeight: FontWeight.w400),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: double.infinity,
            height: 10,
            decoration: BoxDecoration(
                color: ColorConstance.mainwhite,
                border: Border.all(width: 0),
                borderRadius: BorderRadius.circular(10)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '0:00',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: ColorConstance.mainwhite),
              ),
              Text(
                '3:09',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: ColorConstance.mainwhite),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                Icons.skip_previous_rounded,
                color: Color.fromARGB(255, 1, 45, 35),
                size: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.play_circle_outline_outlined,
                color: Color.fromARGB(255, 1, 45, 35),
                size: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.skip_next_rounded,
                color: Color.fromARGB(255, 1, 45, 35),
                size: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Spacer(),
              Text(
                'JioTune',
                style: TextStyle(fontSize: 18, color: ColorConstance.mainwhite),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.music_video_rounded,
                color: Color.fromARGB(255, 1, 45, 35),
              )
            ],
          ),
          Divider(
            indent: 0,
            endIndent: 0,
            color: Color.fromARGB(255, 1, 45, 35),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Recommended Playlist",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 300,
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              itemCount: DummyDb.musicforu.length,
              itemBuilder: (context, index) => Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                NetworkImage(DummyDb.musicforu[index]['url'])),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    DummyDb.musicforu[index]['name'],
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Icon(
                    Icons.play_arrow_rounded,
                    color: Color.fromARGB(255, 1, 45, 35),
                  )
                ],
              ),
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 10,
                );
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(8),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 0)),
            child: Text(
              'Explore Music',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 1, 45, 35),
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          )
        ],
      ),
    );
  }

  Container _card4() {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: ColorConstance.mainwhite,
          border: Border.all(color: ColorConstance.mainblack, width: 0),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Container(
            height: 150,
            width: 450,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(ImageConstance.PLAYWINupi_IMAGE))),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.orange.shade300,
                    radius: 25,
                    child: Icon(
                      Icons.qr_code_scanner_outlined,
                      color: ColorConstance.mainwhite,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Scan any...')
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.orange.shade300,
                    radius: 25,
                    child: Icon(
                      Icons.currency_rupee_outlined,
                      color: ColorConstance.mainwhite,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Pay via UPI ID...')
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.orange.shade300,
                    radius: 25,
                    child: Icon(
                      Icons.credit_card,
                      color: ColorConstance.mainwhite,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Pay my Bills')
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.orange.shade300,
                    radius: 25,
                    child: Icon(
                      Icons.menu_book_outlined,
                      color: ColorConstance.mainwhite,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('My Pass')
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Row _card3() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(ImageConstance.JIO_MUSIC))),
              ),
              Text(
                'Music-play,pause,',
                style: TextStyle(
                    color: ColorConstance.mainblack,
                    fontWeight: FontWeight.bold),
              ),
              Text('Repeat',
                  style: TextStyle(
                      color: ColorConstance.mainblack,
                      fontWeight: FontWeight.bold))
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(ImageConstance.UpI_IMAGE))),
            ),
            Text(
              'Engage ,',
              style: TextStyle(
                  color: ColorConstance.mainblack, fontWeight: FontWeight.bold),
            ),
            Text('Play & Win',
                style: TextStyle(
                    color: ColorConstance.mainblack,
                    fontWeight: FontWeight.bold))
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(ImageConstance.PLAYWIN_IMAGE))),
            ),
            Text(
              'Jio FInance ,',
              style: TextStyle(
                  color: ColorConstance.mainblack, fontWeight: FontWeight.bold),
            ),
            Text('UPI Pay',
                style: TextStyle(
                    color: ColorConstance.mainblack,
                    fontWeight: FontWeight.bold))
          ],
        ),
      ],
    );
  }

  Widget _container2() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorConstance.mainwhite,
            border: Border.all(width: 0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 187, 185, 185),
                  radius: 25,
                  child: Icon(
                    Icons.settings_input_antenna,
                    color: ColorConstance.mainblue,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Get JioFiberAir')
              ],
            ),
            Column(
              children: [
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 187, 185, 185),
                  radius: 25,
                  child: Icon(
                    Icons.sim_card,
                    color: ColorConstance.mainblue,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Get Jio Sim')
              ],
            ),
            Column(
              children: [
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 187, 185, 185),
                  radius: 25,
                  child: Icon(
                    Icons.router_outlined,
                    color: ColorConstance.mainblue,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Get JIOFIber')
              ],
            ),
          ],
        ));
  }

  Container _ContainerCaard() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(width: 0),
        borderRadius: BorderRadius.circular(10),
        color: Colors.lightBlue.shade100,
      ),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: ColorConstance.mainblue,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(ImageConstance.JIO_FIBER))),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Book JioFiber and AirFiber',
                style: TextStyle(
                    color: ColorConstance.mainblack,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Text(
                '${'Get high-speeed data,set-top box,'}',
                style: TextStyle(
                  color: ColorConstance.mainblack,
                ),
              ),
              Text(
                '${'OTT subscription and more.'}',
                style: TextStyle(
                  color: ColorConstance.mainblack,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _userPlansCard() {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: ColorConstance.mainwhite,
          border: Border.all(color: ColorConstance.mainblack, width: 0),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.phone_android_sharp,
                color: ColorConstance.mainblue,
              ),
              Text(
                'Mobile prepaid ',
                style: TextStyle(color: ColorConstance.mainblack),
              ),
              Text(
                '9074230961',
                style: TextStyle(
                    color: ColorConstance.mainblack,
                    fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.keyboard_arrow_right_outlined,
                color: ColorConstance.mainblack,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Data',
                    style: TextStyle(
                      color: ColorConstance.mainblack,
                    ),
                  ),
                  Text(
                    '1.20 GB',
                    style: TextStyle(
                        color: ColorConstance.mainblack,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'left of 1.50 GB',
                    style: TextStyle(
                      color: ColorConstance.mainblack,
                    ),
                  ),
                  Text(
                    'Renews in 10 hours',
                    style: TextStyle(
                      color: ColorConstance.mainblack,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
                child: VerticalDivider(),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Plan',
                    style: TextStyle(
                      color: ColorConstance.mainblack,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.currency_rupee,
                        size: 15,
                        color: ColorConstance.mainblack,
                      ),
                      Text(
                        '239',
                        style: TextStyle(
                            color: ColorConstance.mainblack,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text(
                    '13 days left',
                    style: TextStyle(
                      color: ColorConstance.mainblack,
                    ),
                  ),
                  Text(
                    '+1 active plan',
                    style: TextStyle(
                      color: ColorConstance.mainblack,
                    ),
                  ),
                ],
              )
            ],
          ),
          Divider(
            thickness: 1,
            indent: 20,
            endIndent: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(226, 192, 186, 186),
                    radius: 25,
                    child: Icon(
                      Icons.currency_rupee,
                      color: ColorConstance.mainblue,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Recharge')
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(226, 192, 186, 186),
                    radius: 25,
                    child: Icon(
                      Icons.data_usage_outlined,
                      color: ColorConstance.mainblue,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Check usage')
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(226, 192, 186, 186),
                    radius: 25,
                    child: Icon(
                      Icons.flight_takeoff,
                      color: ColorConstance.mainblue,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Roaming')
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(226, 192, 186, 186),
                    radius: 25,
                    child: Icon(
                      Icons.more_horiz_outlined,
                      color: ColorConstance.mainblue,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('More')
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _addsContainer() {
    return ListView.builder(
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(fit: BoxFit.cover, DummyDb.addsimage[index]),
          ),
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(25)),
          height: 150,
          width: 250,
        ),
      ),
    );
  }

  Widget circleAvatar3() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            CircleAvatar(
              backgroundColor: Color.fromARGB(218, 171, 6, 200),
              radius: 25,
              child: Icon(
                Icons.casino_outlined,
                color: ColorConstance.mainwhite,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Play&Win')
          ],
        ),
        Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.red.shade900,
              radius: 25,
              child: Icon(
                Icons.newspaper,
                color: ColorConstance.mainwhite,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('News')
          ],
        ),
        Column(
          children: [
            CircleAvatar(
              backgroundColor: ColorConstance.mainblue,
              radius: 25,
              child: Icon(
                Icons.offline_bolt_rounded,
                color: ColorConstance.mainwhite,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Offers')
          ],
        ),
        Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blueGrey.shade100,
              radius: 25,
              child: Icon(
                Icons.keyboard_arrow_down_sharp,
                color: ColorConstance.mainwhite,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('More')
          ],
        ),
      ],
    );
  }

  Widget circleAvatar2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 34, 110, 37),
              radius: 25,
              child: Icon(
                Icons.sports_esports_outlined,
                color: ColorConstance.mainwhite,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Games')
          ],
        ),
        Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.orange.shade100,
              radius: 25,
              child: Icon(
                Icons.credit_card,
                color: ColorConstance.mainwhite,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('UPI')
          ],
        ),
        Column(
          children: [
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 242, 72, 72),
              radius: 25,
              child: Icon(
                Icons.local_mall,
                color: ColorConstance.mainwhite,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Shopping')
          ],
        ),
        Column(
          children: [
            CircleAvatar(
              backgroundColor: Color.fromARGB(159, 9, 15, 183),
              radius: 25,
              child: Icon(
                Icons.account_balance_outlined,
                color: ColorConstance.mainwhite,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Bank')
          ],
        ),
      ],
    );
  }

  Widget circleAvatar1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            Text('mobile')
          ],
        ),
        Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue.shade400,
              radius: 25,
              child: Icon(
                Icons.router_outlined,
                color: ColorConstance.mainwhite,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Fiber')
          ],
        ),
        Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.lightGreen.shade400,
              radius: 25,
              child: Icon(
                Icons.library_music,
                color: ColorConstance.mainwhite,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Music')
          ],
        ),
        Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.red.shade900,
              radius: 25,
              child: Icon(
                Icons.live_tv_rounded,
                color: ColorConstance.mainwhite,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('TV')
          ],
        ),
      ],
    );
  }
}
