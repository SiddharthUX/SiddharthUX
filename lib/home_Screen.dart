import 'dart:ui';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:openseat/AppColor.dart';
import 'package:openseat/Search_list.dart';
import 'package:openseat/list%20detail%20pages/service_deatils.dart';
import 'package:openseat/login_page.dart';

import 'package:openseat/navigation/My_list.dart';
import 'package:openseat/navigation/Tv_show.dart';
import 'package:openseat/navigation/bookmark.dart';
import 'package:openseat/navigation/buzz.dart';
import 'package:openseat/user%20login/profile.dart';
import 'package:openseat/user%20login/setting_page.dart';
import 'package:openseat/user%20login/user_login.dart';

import 'locatin_Set.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

var imagelist12 = [
  "assets/images/list.png",
  "assets/images/list.png",
  "assets/images/list.png",
  "assets/images/list.png",
];
var serviceename = [
  "Apna Parlor",
  "Car Service",
  "Apna Restorent",
  "matrix Salon"
];
var Subtitle = [
  "salon & spa",
  "Repairing Service",
  "restorent",
  "salon & massage"
];
var Address = [
  "Vijay Nagar",
  "Casa Green Neyer Sangreela",
  "setelite junction Pnachwati",
  "Southtukoganj"
];
var ratting = ["2.4", "4.5", "3.8", "5.0"];

class _HomeScreenState extends State<HomeScreen> {
  get dropDownMenuIttemStyle => null;
  void onTabTapped(int index) {
    if (index == 0) {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => HomeScreen()),
      // );
    } else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Tv_show()),
      );
    } else if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => bookmark_page()),
      );
    } else if (index == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => buzz_page()),
      );
    }
  }

  Widget buildSearchbtn() {
    return Container(
      color: Appcolor.bgcolor,
      child: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(color: Appcolor.white, boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 10, offset: Offset(2, 6))
              ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "Search Saloon,hospital,restorent",
                      style: TextStyle(
                          color: Appcolor.cgreen,
                          fontFamily: "poppins",
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Repair Service Bank",
                      style: TextStyle(
                          color: Appcolor.cgreen,
                          fontFamily: "poppings",
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                            child: Image.asset(
                          'assets/images/Group 2417.png',
                          //fit: BoxFit.cover,
                        )),
                        Container(
                          width: 340,
                          height: 47,
                          child: RaisedButton(
                              elevation: 15,
                              color: Appcolor.cgreen,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return Search_List();
                                    },
                                  ),
                                );
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Icon(
                                      Icons.search,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Search heare.....",
                                      style: TextStyle(
                                          fontFamily: "poppins",
                                          fontSize: 13,
                                          color: Appcolor.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              )),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.all(20.0),
                        //   child: Material(
                        //     color: Appcolor.cgreen,
                        //     elevation: 5.0,
                        //     borderRadius: BorderRadius.all(
                        //       Radius.circular(15),
                        //     ),
                        //     shadowColor: Colors.black,
                        //     child: TextField(
                        //       controller: TextEditingController(),
                        //       style: dropDownMenuIttemStyle,
                        //       cursorColor: Appcolor.yallow,
                        //       decoration: InputDecoration(
                        //           fillColor: Appcolor.yallow,
                        //           contentPadding: EdgeInsets.symmetric(
                        //               horizontal: 15, vertical: 14),
                        //           suffixIcon: Material(
                        //             elevation: 0,
                        //             color: Appcolor.cgreen,
                        //             child: Icon(
                        //               Icons.search,
                        //               color: Appcolor.yallow,
                        //             ),
                        //           )),
                        //     ),
                        //   ),
                        //  )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: RichText(
                        text: TextSpan(
                            text: "Herose Service ",
                            style: TextStyle(
                              color: Appcolor.cgreen,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            children: <TextSpan>[
                          TextSpan(
                              text: "Near You",
                              style: TextStyle(
                                  color: Appcolor.yallow,
                                  fontSize: 18,
                                  fontFamily: "popiings",
                                  fontWeight: FontWeight.bold))
                        ])),
                  ),
                  Container(
                    child: InkWell(
                      child: SvgPicture.asset("assets/images/return.svg"),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Search_List();
                            },
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Welcome",
          style: TextStyle(
              color: Appcolor.cgreen,
              fontSize: 14,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 20,
        shadowColor: Colors.black.withOpacity(.7),
        leading: IconButton(
          icon: SvgPicture.asset("assets/images/ic_setting.svg"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return setting_page();
                },
              ),
            );
          },
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: InkWell(
              child: CircleAvatar(
                backgroundColor: Appcolor.cgreen,
                child: Image.asset("assets/images/avtar.png"),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return profile_page();
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            buildSearchbtn(),
            Expanded(child: _buildListView())
          ],
        ),
      ),
      bottomNavigationBar: Container(
        // height: 50,
        // padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Appcolor.cgreen,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        child: BottomNavigationBar(
          elevation: 6,
          onTap: onTabTapped,

          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          currentIndex: 0,
          // iconSize: 30,
          // selectedFontSize: 30,
          // unselectedFontSize: 20,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: SvgPicture.asset(
                  'assets/images/nav_home.svg',
                  //   color: AppColors.white,
                ),
              ),
              title: new Text(
                'Search',
                style: TextStyle(
                  fontFamily: 'NunitoBold',
                  color: Appcolor.redlight,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: SvgPicture.asset(
                  'assets/images/nav_tv_a.svg',
                  //allowDrawingOutsideViewBox: true,
                ),
              ),
              /*icon: SvgPicture.asset(
                    'assets/nav_notification.svg',
                    //allowDrawingOutsideViewBox: true,
                  ),*/
              title: new Text(
                'Screen',
                style: TextStyle(
                  fontFamily: 'NunitoBold',
                  color: Colors.white54,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: SvgPicture.asset(
                  'assets/images/nav_bookmark_a.svg',
                  //allowDrawingOutsideViewBox: true,
                ),
              ),
              title: Text(
                'Bookmark',
                style: TextStyle(
                  fontFamily: 'NunitoBold',
                  color: Colors.white54,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: SvgPicture.asset(
                  'assets/images/nav_buzz_a.svg',
                  //allowDrawingOutsideViewBox: true,
                ),
              ),
              title: Text(
                'Buzz',
                style: TextStyle(
                  fontFamily: 'NunitoBold',
                  color: Colors.white54,
                ),
              ),
            )
          ],
          // onTap: (index) {
          //   setState(() {
          //     _currentIndex = index;
          //   });
          // },
        ),
      ),
    );
  }

  ListView _buildListView() {
    return ListView.builder(
      itemCount: imagelist12.length,
      itemBuilder: (context, indext) {
        var Titlename;
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return service_details();
                },
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 5,
            ),
            child: Card(
                elevation: 9,
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.asset(imagelist12[indext]),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(serviceename[indext],
                            style: TextStyle(
                                fontSize: 16,
                                color: Appcolor.cgreen,
                                fontFamily: "poppins",
                                fontWeight: FontWeight.bold)),
                        Text(
                          Subtitle[indext],
                          style: TextStyle(
                              color: Appcolor.cyan,
                              fontFamily: "poppins",
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          Address[indext],
                          style: TextStyle(
                              color: Appcolor.gray,
                              fontFamily: "poppins",
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: 14,
                                width: 14,
                                decoration: BoxDecoration(
                                  color: Appcolor.green,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 2.5,
                                    color: Colors.white,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(.3),
                                      blurRadius: 10,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Online",
                                style: TextStyle(
                                    color: Appcolor.green,
                                    fontFamily: "poppins",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 150,
                              ),
                              SizedBox(
                                child: SvgPicture.asset(
                                    "assets/images/ic_rating_list.svg"),
                              ),
                              Text(
                                ratting[indext],
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  color: Appcolor.yallow,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )),
          ),
        );
      },
    );
  }
}
