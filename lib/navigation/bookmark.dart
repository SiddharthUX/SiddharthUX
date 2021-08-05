import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:openseat/navigation/buzz.dart';
import 'package:openseat/user%20login/user_login.dart';

import '../AppColor.dart';
import '../home_Screen.dart';
import 'Tv_show.dart';

class bookmark_page extends StatefulWidget {
  const bookmark_page({Key? key}) : super(key: key);

  @override
  _bookmark_pageState createState() => _bookmark_pageState();
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

class _bookmark_pageState extends State<bookmark_page> {
  void onTabTapped(int index) {
    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Tv_show()),
      );
    } else if (index == 2) {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => My_list()),
      // );
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
            "Bookmark",
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
          child: Column(
            children: <Widget>[
              Container(
                height: 53,
                color: Appcolor.redlight,
              ),
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
            currentIndex: 2,
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
                    'assets/images/nav_bookmark.svg',
                    //allowDrawingOutsideViewBox: true,
                  ),
                ),
                title: Text(
                  'Bookmark',
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
    itemCount: imagelist12.length,
    itemBuilder: (context, indext) {
      var Titlename;
      return Container(
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
                  mainAxisAlignment: MainAxisAlignment.start,
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
      );
    },
  );
}
