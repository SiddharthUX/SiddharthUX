import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:openseat/AppColor.dart';
import 'package:openseat/guest_login.dart';
import 'package:openseat/locatin_Set.dart';

class Select_User extends StatefulWidget {
  const Select_User({Key? key}) : super(key: key);

  @override
  _Select_UserState createState() => _Select_UserState();
}

class _Select_UserState extends State<Select_User> {
  Widget buildUserBtn(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: RaisedButton(
            elevation: 15,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Locatin_Set();
                  },
                ),
              );
            },

            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(6),
            // ),
            color: Appcolor.yallow,
            child: Container(
              decoration: BoxDecoration(
                color: Appcolor.yallow,
                borderRadius: BorderRadius.circular(10),
                // boxShadow: [
                //   BoxShadow(
                //       color: Appcolor.yallow,
                //       blurRadius: 10,
                //       offset: Offset(0, 4))
                // ]
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        child: SvgPicture.asset(
                            "assets/images/btn_arrow_white.svg")),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Are You An User ",
                      style: TextStyle(
                          color: Appcolor.white,
                          fontSize: 16,
                          fontFamily: 'poppins'),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }

  Widget buildBusnessBtn(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
      alignment: Alignment.center,
      child: Container(
        child: RaisedButton(
            elevation: 15,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Locatin_Set();
                  },
                ),
              );
            },

            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(6),
            // ),
            color: Appcolor.cyan,
            child: Container(
              decoration: BoxDecoration(
                color: Appcolor.cyan,
                borderRadius: BorderRadius.circular(10),
                // boxShadow: [
                //  // BoxShadow(
                //       // color: Appcolor.cyan,
                //       // blurRadius: 10,
                //       // offset: Offset(0, 4))
                // ]
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        child: SvgPicture.asset(
                            "assets/images/btn_arrow_white.svg")),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Are You An User ",
                      style: TextStyle(
                          color: Appcolor.white,
                          fontSize: 16,
                          fontFamily: 'poppins'),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10,
        backgroundColor: Appcolor.white,
        elevation: 0,
        //title: Text(""),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(color: Appcolor.white, boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        offset: Offset(2, 6))
                  ]),
                  //   padding: EdgeInsets.only(top: 35),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            color: Appcolor.cgreen,
                            child: CustomPaint(
                              size: Size(70, 6),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            color: Appcolor.redlight,
                            child: CustomPaint(
                              size: Size(70, 6),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            color: Appcolor.redlight,
                            child: CustomPaint(
                              size: Size(70, 6),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            // color: Appcolor.redlight,
                            child: Text(
                              "1/3 Done!",
                              style: TextStyle(
                                  color: Appcolor.bluelight,
                                  fontSize: 10,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.normal),
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: "Chose Your ",
                            style: TextStyle(
                                color: Appcolor.cgreen,
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'popping'),
                          ),
                          TextSpan(
                              text: "Universe ",
                              style: TextStyle(
                                  color: Appcolor.yallow,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'poppins')),
                        ])),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                          child:
                              SvgPicture.asset("assets/images/img_user.svg")),
                      buildUserBtn(context)
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                          child: SvgPicture.asset(
                              "assets/images/img_business.svg")),
                      buildBusnessBtn(context)
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
