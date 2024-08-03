import 'package:class_main_project/dummy_db.dart';
import 'package:class_main_project/utils/constance/color_constance.dart';
import 'package:class_main_project/utils/constance/image_constance.dart';
import 'package:class_main_project/view/jio_tunes_screen/jio_tunes_songlist/jio_tune_songlist.dart';
import 'package:flutter/material.dart';

class JioTunesScreen extends StatelessWidget {
  const JioTunesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(ImageConstance.JIO_MUSIC),
                          radius: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'JioSaavn',
                          style: TextStyle(
                              color: ColorConstance.mainblack, fontSize: 25),
                        )
                      ],
                    ),
                    Icon(
                      Icons.close,
                      size: 30,
                    ),
                  ],
                ),
                Divider(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 0)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: ColorConstance.grey,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Search JioTunes',
                        style: TextStyle(
                            color: ColorConstance.mainblack.withOpacity(.70),
                            fontSize: 20),
                      )
                    ],
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                JioTuneSonglist(
                  havemoviename: '.....',
                  havesongname: '.....',
                  customimage: DummyDb.songslist,
                ),
                JioTuneSonglist(
                  havemoviename: DummyDb.songlist2movie,
                  havesongname: DummyDb.songlist2song,
                  customheight: 120,
                  customwidth: 100,
                  customtitle: 'Top JioTunes 2024 so Far..',
                  customimage: DummyDb.songlist2image,
                ),
                JioTuneSonglist(
                  customtitle: 'Monsoon Moments',
                  customheight: 120,
                  customwidth: 100,
                  customimage: DummyDb.songlist3image,
                  havemoviename: DummyDb.songlist3move,
                  havesongname: DummyDb.songlist3song,
                ),
                JioTuneSonglist(
                  customtitle: 'Recommended JioTunes',
                  customheight: 120,
                  customwidth: 100,
                  customimage: DummyDb.songlist4image,
                  havemoviename: DummyDb.songlist4movie,
                  havesongname: DummyDb.songlist4song,
                ),
                JioTuneSonglist(
                  customtitle: 'Malayalam Superhits',
                  customheight: 120,
                  customwidth: 100,
                  customimage: DummyDb.songlist5image,
                  havemoviename: DummyDb.songlist5movie,
                  havesongname: DummyDb.songlist5song,
                ),
                JioTuneSonglist(
                  customtitle: 'Tamil Superhits',
                  customheight: 120,
                  customwidth: 100,
                  customimage: DummyDb.songlist6image,
                  havemoviename: DummyDb.songlist6movie,
                  havesongname: DummyDb.songlist6song,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: ColorConstance.grey),
                  ),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Looking for your favourite JioTunes?',
                            style: TextStyle(
                                color: ColorConstance.mainblack,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Search and choose songs that you want to set as jio tunes and well make it happen,capn!',
                            style: TextStyle(
                                color: ColorConstance.mainblack, fontSize: 15),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(width: 0),
                                color: Color.fromARGB(
                                  255,
                                  11,
                                  172,
                                  187,
                                )),
                            child: Text(
                              'Search More JioTunes',
                              style: TextStyle(
                                  color: ColorConstance.mainwhite,
                                  fontSize: 20),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
