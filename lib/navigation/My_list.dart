import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:openseat/AppColor.dart';
import 'package:openseat/home_Screen.dart';

import 'package:openseat/navigation/Tv_show.dart';

class My_list extends StatefulWidget {
  const My_list({Key? key}) : super(key: key);

  @override
  _My_listState createState() => _My_listState();
}

class _My_listState extends State<My_list> {
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
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          alignment: Alignment.center,
          color: Appcolor.bgcolor,
          child: Text("My list"),
        ),
        bottomNavigationBar: Container(
          // padding: EdgeInsets.all(20),
          // decoration: BoxDecoration(
          //     color: Appcolor.cgreen,
          //     borderRadius: BorderRadius.only(
          //         topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: CurvedNavigationBar(
            index: 2,
            height: 50,
            items: <Widget>[
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/images/nav_search.svg'),
                    Text(
                      "Search",
                      style: TextStyle(
                        color: Appcolor.white,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/images/nav_tv.svg'),
                    Text(
                      "My Screen",
                      style: TextStyle(
                        color: Appcolor.white,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/images/nav_bookmark.svg'),
                    // Text(
                    //   "Bookmark",
                    //   style: TextStyle(fontSize: 14, color: Appcolor.white),
                    // )
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/images/nav_buzz.svg'),
                    Text(
                      "Buzz",
                      style: TextStyle(fontSize: 14, color: Appcolor.white),
                    )
                  ],
                ),
              )
            ],
            color: Appcolor.cgreen,
            buttonBackgroundColor: Appcolor.cgreen,
            backgroundColor: Appcolor.bgcolor,
            animationCurve: Curves.easeInOut,
            animationDuration: Duration(milliseconds: 400),
            onTap: onTabTapped,
          ),
        ));
  }
}
