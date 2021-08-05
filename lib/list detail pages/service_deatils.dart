import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:openseat/AppColor.dart';
import 'package:openseat/Search_list.dart';
import 'package:openseat/list%20detail%20pages/ratting_page.dart';
import 'package:openseat/list%20detail%20pages/service_about.dart';
import 'package:openseat/list%20detail%20pages/service_contact.dart';
import 'package:openseat/list%20detail%20pages/service_page.dart';
import 'package:openseat/list%20detail%20pages/tab_bar.dart';

class service_details extends StatefulWidget {
  const service_details({Key? key}) : super(key: key);

  @override
  _service_detailsState createState() => _service_detailsState();
}

class _service_detailsState extends State<service_details>
    with TickerProviderStateMixin {
  @override
  Widget buildTv_Screen() {
    return Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Appcolor.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 1, // red as border color
                ),
              ),
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    child: CircleAvatar(
                      child: Image.asset(
                        "assets/images/user.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Bridal Mackup",
                          style: TextStyle(
                              fontFamily: "poppins",
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Bridal Mackup",
                          style: TextStyle(
                              fontFamily: "poppins",
                              color: Appcolor.cyan,
                              fontSize: 9,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Container(
                    // alignment: Alignment.centerRight,
                    // width: 73,
                    height: 37,
                    child: RaisedButton(
                      elevation: 5,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      color: Appcolor.yallow,
                      child: Text(
                        "Book Now",
                        maxLines: 1,
                        style: TextStyle(
                            fontFamily: "poppins",
                            fontSize: 12,
                            color: Appcolor.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
              color: Appcolor.white,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color: Appcolor.white,
                    margin: EdgeInsets.fromLTRB(0, 0, 0.5, 0),
                    child: Text("sample"),
                  ),
                  Container(
                    color: Appcolor.white,
                    margin: EdgeInsets.fromLTRB(0, 0, .5, 0),
                    child: Text("sample"),
                  )
                ],
              ),
            )
          ],
        ));
  }

  Widget buildDetail() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "DESCRIPTION",
              style: TextStyle(
                  color: Appcolor.cyan,
                  fontFamily: "poppins",
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Text(
              "cuncult with city top doctor online from home or book your oppointment cuncult with city top doctor online from",
              maxLines: 2,
              style: TextStyle(
                  color: Appcolor.cgreen,
                  fontFamily: "poppins",
                  fontSize: 13,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "SERVICE WE PROVIDE",
              style: TextStyle(
                  color: Appcolor.cyan,
                  fontFamily: "poppins",
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Appcolor.white,
              border: Border.all(
                color: Colors.grey,
                width: .5, // red as border color
              ),
            ),
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: CircleAvatar(
                    child: Image.asset(
                      "assets/images/user.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Pideatric",
                          style: TextStyle(
                              fontFamily: "poppins",
                              color: Appcolor.cgreen,
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "3 spacialist aveleble",
                          style: TextStyle(
                              fontFamily: "poppins",
                              color: Colors.grey,
                              fontSize: 9,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                Container(
                  // alignment: Alignment.centerRight,
                  // width: 73,
                  height: 37,
                  child: RaisedButton(
                    elevation: 5,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: Appcolor.yallow,
                    child: Text(
                      "Book Now",
                      maxLines: 1,
                      style: TextStyle(
                          fontFamily: "poppins",
                          fontSize: 12,
                          color: Appcolor.white),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Appcolor.white,
              border: Border.all(
                color: Colors.grey,
                width: .5, // red as border color
              ),
            ),
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: CircleAvatar(
                    child: Image.asset(
                      "assets/images/user.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Pideatric",
                          style: TextStyle(
                              fontFamily: "poppins",
                              color: Appcolor.cgreen,
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "3 spacialist aveleble",
                          style: TextStyle(
                              fontFamily: "poppins",
                              color: Colors.grey,
                              fontSize: 9,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                Container(
                  // alignment: Alignment.centerRight,
                  // width: 73,
                  height: 37,
                  child: RaisedButton(
                    elevation: 5,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: Appcolor.yallow,
                    child: Text(
                      "Book Now",
                      maxLines: 1,
                      style: TextStyle(
                          fontFamily: "poppins",
                          fontSize: 12,
                          color: Appcolor.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildContact() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Appcolor.white,
              border: Border.all(
                color: Colors.grey,
                width: .5, // red as border color
              ),
            ),
            padding: EdgeInsets.all(10),
            child: Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: CircleAvatar(
                    child: Image.asset(
                      "assets/images/user.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        // alignment: Alignment.centerLeft,
                        child: Text(
                          "Pideatric",
                          style: TextStyle(
                              fontFamily: "poppins",
                              color: Appcolor.cgreen,
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        // alignment: Alignment.centerLeft,
                        child: Text(
                          "3 spacialist aveleble",
                          style: TextStyle(
                              fontFamily: "poppins",
                              color: Colors.grey,
                              fontSize: 9,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "MOBILE NUMBER",
                    style: TextStyle(
                        fontSize: 13,
                        color: Appcolor.cyan,
                        fontFamily: "POPPINS",
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "DISTANCE",
                    style: TextStyle(
                        fontSize: 13,
                        color: Appcolor.cyan,
                        fontFamily: "POPPINS",
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "+8305277511 ,741572234",
                    style: TextStyle(
                        fontSize: 13,
                        color: Appcolor.cgreen,
                        fontFamily: "POPPINS",
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "3 km ",
                    style: TextStyle(
                        fontSize: 13,
                        color: Appcolor.cgreen,
                        fontFamily: "POPPINS",
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "TIMING",
              style: TextStyle(
                  fontSize: 13,
                  color: Appcolor.cyan,
                  fontFamily: "POPPINS",
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "MONDAY",
                    style: TextStyle(
                        fontSize: 13,
                        color: Appcolor.cgreen,
                        fontFamily: "POPPINS",
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "10 .30AM to 2.30PM",
                    style: TextStyle(
                        fontSize: 13,
                        color: Appcolor.cgreen,
                        fontFamily: "POPPINS",
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "ADDRESS",
              style: TextStyle(
                  fontSize: 13,
                  color: Appcolor.cyan,
                  fontFamily: "POPPINS",
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 5),
            child: Text(
              "bihind asharam bapu krishna nagar makroniya sagar madhya pardes",
              maxLines: 2,
              style: TextStyle(
                  fontSize: 13,
                  color: Appcolor.cgreen,
                  fontFamily: "POPPINS",
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }

  Widget buildRatting() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Appcolor.white,
                    border: Border.all(
                      color: Colors.grey,
                      width: 1, // red as border color
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        child: CircleAvatar(
                          child: Image.asset(
                            "assets/images/user.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Bridal Mackup",
                              style: TextStyle(
                                  fontFamily: "poppins",
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Bridal Mackup",
                              style: TextStyle(
                                  fontFamily: "poppins",
                                  color: Appcolor.cyan,
                                  fontSize: 9,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Container(
                        // alignment: Alignment.centerRight,
                        // width: 73,
                        height: 37,
                        child: RaisedButton(
                          elevation: 5,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          color: Appcolor.yallow,
                          child: Text(
                            "Book Now",
                            maxLines: 1,
                            style: TextStyle(
                                fontFamily: "poppins",
                                fontSize: 12,
                                color: Appcolor.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    " lorum ispum lorum ispumlorum ispum lorum ispum lorum ispum lorum ispum lorum ispum lorum ispum",
                    maxLines: 3,
                    style: TextStyle(
                        fontFamily: "poppins",
                        fontSize: 11,
                        color: Appcolor.cgreen,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  _buildDetailsAndMaterialWidgets() {
    TabController tabController = new TabController(length: 4, vsync: this);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TabBar(
            indicatorColor: Appcolor.cgreen,
            // labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            controller: tabController,
            // labelColor: Appcolor.cgreen,
            // unselectedLabelColor: Appcolor.yallow,
            tabs: <Widget>[
              Tab(
                child: Text(
                  "TvScreen",
                  style: TextStyle(
                      color: Appcolor.cgreen,
                      fontFamily: "poppins",
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  "Details",
                  style: TextStyle(
                      color: Appcolor.cgreen,
                      fontFamily: "poppins",
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  "Contact",
                  style: TextStyle(
                      color: Appcolor.cgreen,
                      fontFamily: "poppins",
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  "Ratting",
                  style: TextStyle(
                      color: Appcolor.cgreen,
                      fontFamily: "poppins",
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Container(
            // padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
            height: 300.0,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                Container(
                  // width: 354,
                  // height: 86,
                  // padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
                  // color: Appcolor.redlight,
                  child: buildTv_Screen(),
                ),
                Container(
                  child: buildDetail(),
                ),
                Container(child: buildContact()),
                Container(child: buildRatting()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget builMatarialButton() {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                color: Appcolor.bgcolor,
                elevation: 5,
                shape: CircleBorder(),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return service_page();
                      },
                    ),
                  );
                },
                child: SvgPicture.asset(
                  'assets/images/d_service.svg',
                  // fit: BoxFit.cover,
                  height: 45, width: 45,
                ),
              ),
              // MaterialButton(
              //   height: 45,
              //   elevation: 10,
              //   onPressed: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) {
              //           return service_page();
              //         },
              //       ),
              //     );
              //   },
              //   color: Appcolor.yallow,
              //   textColor: Appcolor.white,
              //   child: Icon(
              //     Icons.settings,
              //     size: 18,
              //   ),
              //   padding: EdgeInsets.all(16),
              //   shape: CircleBorder(),
              // ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Services",
                  style: TextStyle(
                      fontSize: 12,
                      color: Appcolor.cgreen,
                      fontFamily: "poppins",
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                height: 45,
                elevation: 10,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return about_page();
                      },
                    ),
                  );
                },
                color: Appcolor.yallow,
                textColor: Appcolor.white,
                child: Icon(
                  Icons.settings,
                  size: 18,
                ),
                padding: EdgeInsets.all(16),
                shape: CircleBorder(),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "About",
                  style: TextStyle(
                      fontSize: 12,
                      color: Appcolor.cgreen,
                      fontFamily: "poppins",
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                height: 45,
                elevation: 10,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return contact_page();
                      },
                    ),
                  );
                },
                color: Appcolor.yallow,
                textColor: Appcolor.white,
                child: Icon(
                  Icons.settings,
                  size: 18,
                ),
                padding: EdgeInsets.all(16),
                shape: CircleBorder(),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Contact Us",
                  style: TextStyle(
                      fontSize: 12,
                      color: Appcolor.cgreen,
                      fontFamily: "poppins",
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                height: 45,
                elevation: 10,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ratting_page();
                      },
                    ),
                  );
                },
                color: Appcolor.yallow,
                textColor: Appcolor.white,
                child: Icon(
                  Icons.settings,
                  size: 18,
                ),
                padding: EdgeInsets.all(16),
                shape: CircleBorder(),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Ratting",
                  style: TextStyle(
                      fontSize: 12,
                      color: Appcolor.cgreen,
                      fontFamily: "poppins",
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Appcolor.white,
          title: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Today'S Timing",
                  style: TextStyle(
                    color: Appcolor.cgreen,
                    fontSize: 8,
                  ),
                ),
                Text(
                  "18.30am- 11.30pm",
                  style: TextStyle(
                      color: Appcolor.cgreen,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          leading: IconButton(
            icon: SvgPicture.asset("assets/images/ic_back.svg"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Search_List()),
              );
            },
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(10),
              child: IconButton(
                icon: SvgPicture.asset('assets/images/ic_share.svg'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => contact_page()),
                  );
                },
              ),
            ),
          ]),
      body: ListView(
        children: [
          Container(
            color: Appcolor.bgcolor,
            child: Column(
              children: [
                Container(
                  child: Stack(
                    // fit: StackFit.expand,
                    children: [
                      Container(
                          alignment: Alignment.center,
                          child: Image.asset("assets/images/saloon.png")),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          alignment: Alignment.center,
                          height: 20,
                          width: double.infinity,
                          color: Appcolor.cyan,
                          child: Text(
                            "Macup Spa And Salun",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Appcolor.white,
                                fontSize: 10,
                                fontFamily: "poppings"),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  height: 47,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Appcolor.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                          offset: Offset(2, 6))
                    ],
                  ),
                  child: Row(
                    //  mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        //  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/images/ic_rating_details.svg",
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "4.5 Rating",
                              style: TextStyle(
                                  color: Appcolor.cgreen,
                                  fontSize: 12,
                                  fontFamily: "poppins",
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SvgPicture.asset(
                              "assets/images/ic_view_details.svg",
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "203 View",
                              style: TextStyle(
                                  color: Appcolor.cgreen,
                                  fontSize: 12,
                                  fontFamily: "poppins",
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        alignment: Alignment.centerRight,
                        child:
                            SvgPicture.asset("assets/images/nav_bookmark.svg"),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Getanjali salon - india's west high street saloon",
                    maxLines: 2,
                    style: TextStyle(
                        color: Appcolor.cgreen,
                        fontSize: 18,
                        fontFamily: "poppins",
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/images/ic_location_green.svg"),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "12 KM - Vijay Nagar",
                        style: TextStyle(
                          color: Appcolor.cgreen,
                          fontSize: 13,
                          fontFamily: "poppins",
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                builMatarialButton(),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      Text(
                        "Booking Seat",
                        style: TextStyle(
                          color: Appcolor.cgreen,
                          fontFamily: "poppins",
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          //decoration: TextDecoration.underline,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        color: Appcolor.cgreen,
                        height: 4,
                        width: 110,
                      ),
                    ],
                  ),
                ),

                //  _buildDetailsAndMaterialWidgets()
              ],
            ),
          ),
          cards(
            'First Window S1',
            'Serve Person Mahesh Parsoriya',
            'Wait Time',
            'People In-line',
            '00:40 hr',
            '2',
          ),
          cards(
            'Public',
            'Serve Person Mahesh Parsoriya',
            'Wait Time',
            'People In-line',
            '00:40 hr',
            '2',
          ),
        ],
      ),
    );
  }

  Widget cards(String text1, String text2, String text3, String text4,
      String text5, String text6) {
    //double width = MediaQuery.of(context).size.width * 0.6;
    return Container(
      height: 126,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(text1,
                      style: TextStyle(
                          fontSize: 16,
                          color: Appcolor.cgreen,
                          fontFamily: "poppins",
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    text2,
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: "poppins",
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Divider(
              thickness: 2,
              //height: 5,
            ),
            Container(
              padding: EdgeInsets.only(top: 3),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(10),
              //   color: Appcolor.white,
              //   border: Border.all(
              //     color: Colors.grey,
              //     width: .5, // red as border color
              //   ),
              //),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(text3,
                          style: TextStyle(
                            color: Appcolor.cgreen,
                            fontFamily: "poppins",
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          )),
                      Text(
                        text5,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontFamily: "poppins",
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(text4,
                          style: TextStyle(
                            color: Appcolor.cgreen,
                            fontFamily: "poppins",
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          )),
                      Text(
                        text6,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontFamily: "poppins",
                        ),
                      ),
                    ],
                  ),
                  Container(
                    // alignment: Alignment.centerRight,
                    // width: 73,
                    height: 27,
                    width: 73,
                    child: RaisedButton(
                      elevation: 5,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      color: Appcolor.yallow,
                      child: Text(
                        "Book",
                        maxLines: 1,
                        style: TextStyle(
                            fontFamily: "poppins",
                            fontSize: 12,
                            color: Appcolor.white),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
