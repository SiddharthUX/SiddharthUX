import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:openseat/navigation/bookmark.dart';

import '../AppColor.dart';
import '../home_Screen.dart';
import 'Tv_show.dart';

class buzz_page extends StatefulWidget {
  const buzz_page({Key? key}) : super(key: key);

  @override
  _buzz_pageState createState() => _buzz_pageState();
}

var seattext = [
  "Your Seat has been Confirmed",
  "Your Seat has ben cancelled",
  "Your Feedback"
];
var centername = [
  "Your seat number is 12",
  "Customer not reach on time.",
  "Service Completed, tell me how did we do?",
];

class _buzz_pageState extends State<buzz_page> {
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
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => bookmark_page()),
      );
    } else if (index == 3) {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => buzz_page()),
      // );
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
            "Buzz",
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
              Expanded(
                child: _buildListView(),
              ),
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
            currentIndex: 3,
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
                    'assets/images/nav_buzz.svg',
                    //allowDrawingOutsideViewBox: true,
                  ),
                ),
                title: Text(
                  'Buzz',
                  style: TextStyle(
                    fontFamily: 'NunitoBold',
                    color: Appcolor.redlight,
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
    itemCount: seattext.length,
    itemBuilder: (context, indext) {
      var Titlename;
      return Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Card(
            elevation: 8,
            child: Row(
              //  mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Appcolor.bluelight,
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
                  width: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(seattext[indext],
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontFamily: "poppins",
                            fontWeight: FontWeight.bold)),
                    Text(
                      "Getanjali Salon",
                      style: TextStyle(
                          color: Appcolor.cyan,
                          fontFamily: "poppins",
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      centername[indext],
                      style: TextStyle(
                          color: Appcolor.gray,
                          fontFamily: "poppins",
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " 3 hour ago",
                      style: TextStyle(
                          color: Appcolor.gray,
                          fontFamily: "poppins",
                          fontSize: 11,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            )),
      );
    },
  );
}
