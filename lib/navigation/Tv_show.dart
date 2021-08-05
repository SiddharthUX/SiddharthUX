import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:openseat/AppColor.dart';
import 'package:openseat/home_Screen.dart';

import 'package:openseat/navigation/My_list.dart';
import 'package:openseat/navigation/bookmark.dart';
import 'package:openseat/navigation/buzz.dart';
import 'package:openseat/user%20login/user_login.dart';

class Tv_show extends StatefulWidget {
  const Tv_show({Key? key}) : super(key: key);

  @override
  _Tv_showState createState() => _Tv_showState();
}

var Imagelist = [
  "assets/images/dp.png",
  "assets/images/dp.png",
  "assets/images/dp.png",
  "assets/images/dp.png",
];

var usernamem = [
  "Upasna Tiwar",
  "Sddhart Tiwari",
  "part Tiwari",
  "Prakash Tiwari"
];
var Servicetital = [
  "Shave & Massage",
  "Shave & facial",
  "head Massage",
  "Body Massage "
];
var Bookingnumber = ["2", "3", "4", "5"];

class _Tv_showState extends State<Tv_show> {
  void onTabTapped(int index) {
    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } else if (index == 1) {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => Tv_show()),
      // );
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Appcolor.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Tv Show",
            style: TextStyle(
                color: Appcolor.cgreen,
                fontFamily: "poppins",
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            icon: SvgPicture.asset("assets/images/ic_setting.svg"),
            onPressed: () {},
          ),
        ),
        body: Container(
            alignment: Alignment.center,
            color: Appcolor.bgcolor,
            child: Column(
              children: <Widget>[
                Container(
                  height: 53,
                  color: Appcolor.redlight,
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 10),
                  width: double.infinity,
                  height: 53,
                  color: Appcolor.yallow,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: SvgPicture.asset("assets/images/arrow_left.svg"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Tv_show()),
                          );
                        },
                      ),
                      Text(
                        "Hair Cut and Body Spa",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Appcolor.white,
                            fontFamily: "poppins",
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        icon: SvgPicture.asset("assets/images/arrow_right.svg"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Tv_show()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, .5, 0),
                        width: 150,
                        height: 120,
                        color: Appcolor.cgreen,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "seat numbe",
                              style: TextStyle(
                                  color: Appcolor.cgreenlight,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "12",
                              style: TextStyle(
                                  color: Appcolor.redlight,
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        //color: Appcolor.cgreen,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              margin: EdgeInsets.fromLTRB(.5, 0, 0, .5),
                              color: Appcolor.cgreen,
                              height: 60,
                              //  width: double.infinity,
                              width: 209,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Estimated Time",
                                    style: TextStyle(
                                        color: Appcolor.cgreenlight,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "01.30 hr",
                                    style: TextStyle(
                                        color: Appcolor.redlight,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              margin: EdgeInsets.fromLTRB(.5, .5, 0, 0),
                              color: Appcolor.cgreen,
                              height: 60,
                              width: 209,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Estimated Time",
                                    style: TextStyle(
                                        color: Appcolor.cgreenlight,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "01.30 hr",
                                    style: TextStyle(
                                        color: Appcolor.redlight,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 1),
                  color: Appcolor.cgreen,
                  height: 70,
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Current No.",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "07",
                              style: TextStyle(
                                  color: Appcolor.redlight,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(30, 5, 20, 5),
                        // alignment: Alignment.centerRight,
                        // width: 73,
                        height: 34,
                        width: 102,
                        child: RaisedButton(
                          elevation: 5,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          color: Appcolor.redlight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/images/w_rating.svg",

                                // color: Appcolor.cgreen,
                              ),
                              Text("Feedback",
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: Appcolor.cgreen,
                                    fontFamily: "poppins",
                                    fontSize: 12,
                                  )),
                            ],
                            //    color: Appcolor.white),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        // alignment: Alignment.centerRight,
                        // width: 73,
                        height: 34,
                        width: 102,
                        child: RaisedButton(
                          elevation: 5,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          color: Appcolor.red,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/images/w_cancel.svg",

                                // color: Appcolor.cgreen,
                              ),
                              Text("Cancel",
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: Appcolor.white,
                                    fontFamily: "poppins",
                                    fontSize: 12,
                                  )),
                            ],
                            //    color: Appcolor.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(25, 5, 0, 5),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "People In-line 21",
                    style: TextStyle(
                        color: Appcolor.cgreen,
                        fontFamily: "poppins",
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(child: _buildListView())
              ],
            )),
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
            currentIndex: 1,
            // iconSize: 30,
            // selectedFontSize: 30,
            // unselectedFontSize: 20,
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: SvgPicture.asset(
                    'assets/images/nav_home_a.svg',
                    //   color: AppColors.white,
                  ),
                ),
                title: new Text(
                  'Search',
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
                    'assets/images/nav_tv.svg',
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
                    color: Appcolor.redlight,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: SvgPicture.asset(
                    'assets/images/ic_bookmark_a.svg',
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
        ));
  }
}

ListView _buildListView() {
  return ListView.builder(
    itemCount: Imagelist.length,
    itemBuilder: (context, indext) {
      return Container(
//height: 126,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Appcolor.white,
          border: Border.all(
            color: Colors.grey,
            width: .5, // red as border color
          ),
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 8, offset: Offset(0, 6))
          ],
        ),
        padding: EdgeInsets.all(10),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // decoration: BoxDecoration(
                //   color: Appcolor.white,
                //   shape: BoxShape.circle,
                //   boxShadow: [
                //     BoxShadow(
                //         color: Colors.grey, blurRadius: 6, offset: Offset(0, 4))
                //   ],
                // ),
                child: CircleAvatar(
                  radius: 25,
                  child: Image.asset(
                    Imagelist[indext],
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(usernamem[indext],
                      style: TextStyle(
                          fontSize: 16,
                          color: Appcolor.cgreen,
                          fontFamily: "poppins",
                          fontWeight: FontWeight.bold)),
                  Text(Servicetital[indext],
                      style: TextStyle(
                          fontSize: 14,
                          color: Appcolor.cyan,
                          fontFamily: "poppins",
                          fontWeight: FontWeight.bold)),
                ],
              )),
              SizedBox(
                width: 20,
              ),
              Container(
                alignment: Alignment.centerRight,
                child: CircleAvatar(
                  backgroundColor: Appcolor.cgreenlight,
                  radius: 15,
                  child: Text(Bookingnumber[indext]),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
