import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:openseat/home_Screen.dart';
import 'package:openseat/user%20login/booking_history.dart';
import 'package:openseat/user%20login/profile.dart';

import '../AppColor.dart';

class setting_page extends StatefulWidget {
  const setting_page({Key? key}) : super(key: key);

  @override
  _setting_pageState createState() => _setting_pageState();
}

class _setting_pageState extends State<setting_page> {
  Widget buildprofile() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 55.0,
            width: 55.0,
            decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
                border: Border.all(width: 3, color: Appcolor.white),
                boxShadow: [
                  BoxShadow(
                    color: Appcolor.gray,
                    offset: const Offset(2.0, 4.0),
                    blurRadius: 4.0,
                    spreadRadius: 1.0,
                  ),
                ]),
            //alignment: Alignment(0.0, 2.5),
            child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg'),
                radius: 50.0,
                child: Icon(
                  Icons.camera_alt_rounded,
                  size: 10,
                )),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Siddharth Tiwari",
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.w500,
                    color: Appcolor.bgcolor),
              ),
              Text(
                "8109090948",
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.w500,
                    color: Appcolor.bgcolor),
              )
            ],
          ),
          SizedBox(
            width: 60,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              icon: SvgPicture.asset("assets/images/m_ic_edit.svg"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => profile_page()),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget buildCard() {
    return Container(
      // height: 199,
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => booking_history()),
              );
            },
            child: Card(
              color: Appcolor.redlight,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                padding: EdgeInsets.all(10),
                height: 119,
                width: 135,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset("assets/images/m_booking.svg"),
                          SvgPicture.asset("assets/images/m_arrow_dark.svg")
                        ]),
                    Text(
                      "Booking History",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: "poppins",
                          fontWeight: FontWeight.w500,
                          color: Appcolor.cgreen),
                    ),
                    Text(
                      "You can check your all past History.",
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 10,
                          fontFamily: "poppins",
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            color: Appcolor.cyan,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
              padding: EdgeInsets.all(10),
              height: 119,
              width: 185,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("assets/images/m_business.svg"),
                        SvgPicture.asset("assets/images/m_arrow_dark.svg")
                      ]),
                  Text(
                    "Add my Business",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: "poppins",
                        fontWeight: FontWeight.w500,
                        color: Appcolor.white),
                  ),
                  Text(
                    "It’s a few steps process, you can check before setup.",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 10,
                        fontFamily: "poppins",
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  bool _switchValue = true;
  bool _switchValue2 = true;

  Widget buildNotification() {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10),
            height: 45,
            decoration: BoxDecoration(
                border: Border.all(width: .5, color: Appcolor.bgcolor),
                // border: Border(
                //     bottom: BorderSide(width: 1.5, color: Appcolor.yallow),
                //     left: BorderSide(width: 3, color: Appcolor.yallow),
                //     right: BorderSide(width: 3, color: Appcolor.yallow),
                //     top: BorderSide(width: 3, color: Appcolor.yallow)),
                //border: Border.all(width: 3, color: Appcolor.yallow),
                color: Appcolor.cgreen,
                // borderRadius: BorderRadius.circular(15)
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SvgPicture.asset("assets/images/m_noti.svg"),
                Text(
                  "Notification",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: "poppins",
                      fontWeight: FontWeight.w500,
                      color: Appcolor.bgcolor),
                ),
                SizedBox(
                  width: 100,
                ),
                Transform.scale(
                  scale: .5,
                  // width: 20,
                  // height: 20,
                  child: CupertinoSwitch(
                    trackColor: Appcolor.gray,
                    activeColor: Appcolor.cyan,
                    value: _switchValue,
                    onChanged: (value) {
                      setState(() {
                        _switchValue = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            height: 45,
            decoration: BoxDecoration(
                border: Border.all(width: .5, color: Appcolor.bgcolor),
                // border: Border(
                //     bottom: BorderSide(width: 1.5, color: Appcolor.yallow),
                //     left: BorderSide(width: 3, color: Appcolor.yallow),
                //     right: BorderSide(width: 3, color: Appcolor.yallow),
                //     top: BorderSide(width: 3, color: Appcolor.yallow)),
                //border: Border.all(width: 3, color: Appcolor.yallow),
                color: Appcolor.cgreen,
                // borderRadius: BorderRadius.circular(15)
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SvgPicture.asset("assets/images/m_sound.svg"),
                Text(
                  "Sound",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: "poppins",
                      fontWeight: FontWeight.w500,
                      color: Appcolor.bgcolor),
                ),
                SizedBox(
                  width: 130,
                ),
                Transform.scale(
                  scale: .5,
                  // width: 20,
                  // height: 20,
                  child: CupertinoSwitch(
                    trackColor: Appcolor.gray,
                    activeColor: Appcolor.cyan,
                    value: _switchValue2,
                    onChanged: (value) {
                      setState(() {
                        _switchValue2 = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildFeedback() {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10),
            height: 45,
            decoration: BoxDecoration(
                border: Border.all(width: .5, color: Appcolor.bgcolor),
                // border: Border(
                //     bottom: BorderSide(width: 1.5, color: Appcolor.yallow),
                //     left: BorderSide(width: 3, color: Appcolor.yallow),
                //     right: BorderSide(width: 3, color: Appcolor.yallow),
                //     top: BorderSide(width: 3, color: Appcolor.yallow)),
                //border: Border.all(width: 3, color: Appcolor.yallow),
                color: Appcolor.cgreen,
                // borderRadius: BorderRadius.circular(15)
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SvgPicture.asset("assets/images/m_noti.svg"),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Give your Suggation/Feedback",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: "poppins",
                      fontWeight: FontWeight.w500,
                      color: Appcolor.bgcolor),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            height: 45,
            decoration: BoxDecoration(
                border: Border.all(width: .5, color: Appcolor.bgcolor),
                // border: Border(
                //     bottom: BorderSide(width: 1.5, color: Appcolor.yallow),
                //     left: BorderSide(width: 3, color: Appcolor.yallow),
                //     right: BorderSide(width: 3, color: Appcolor.yallow),
                //     top: BorderSide(width: 3, color: Appcolor.yallow)),
                //border: Border.all(width: 3, color: Appcolor.yallow),
                color: Appcolor.cgreen,
                // borderRadius: BorderRadius.circular(15)
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SvgPicture.asset("assets/images/m_sound.svg"),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "App liked? share App",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: "poppins",
                      fontWeight: FontWeight.w500,
                      color: Appcolor.bgcolor),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildHelpSuport() {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10),
            height: 45,
            decoration: BoxDecoration(
                border: Border.all(width: .5, color: Appcolor.bgcolor),
                // border: Border(
                //     bottom: BorderSide(width: 1.5, color: Appcolor.yallow),
                //     left: BorderSide(width: 3, color: Appcolor.yallow),
                //     right: BorderSide(width: 3, color: Appcolor.yallow),
                //     top: BorderSide(width: 3, color: Appcolor.yallow)),
                //border: Border.all(width: 3, color: Appcolor.yallow),
                color: Appcolor.cgreen,
                // borderRadius: BorderRadius.circular(15)
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SvgPicture.asset("assets/images/m_help.svg"),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Help & Suport",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: "poppins",
                      fontWeight: FontWeight.w500,
                      color: Appcolor.bgcolor),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            height: 45,
            decoration: BoxDecoration(
                border: Border.all(width: .5, color: Appcolor.bgcolor),
                color: Appcolor.cgreen),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SvgPicture.asset("assets/images/m_privacy.svg"),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Privecy & Security",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: "poppins",
                      fontWeight: FontWeight.w500,
                      color: Appcolor.bgcolor),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            height: 45,
            decoration: BoxDecoration(
                border: Border.all(width: .5, color: Appcolor.bgcolor),
                // border: Border(
                //     bottom: BorderSide(width: 1.5, color: Appcolor.yallow),
                //     left: BorderSide(width: 3, color: Appcolor.yallow),
                //     right: BorderSide(width: 3, color: Appcolor.yallow),
                //     top: BorderSide(width: 3, color: Appcolor.yallow)),
                //border: Border.all(width: 3, color: Appcolor.yallow),
                color: Appcolor.cgreen,
                // borderRadius: BorderRadius.circular(15)
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SvgPicture.asset("assets/images/m_about.svg"),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "About Us",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: "poppins",
                      fontWeight: FontWeight.w500,
                      color: Appcolor.bgcolor),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildLogiutBtn() {
    return Container(
      height: 45,
      width: 130,
      child: RaisedButton(
          elevation: 10,
          color: Appcolor.yallow,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset("assets/images/m_like.svg"),
              Text(
                "Logout",
                style: TextStyle(
                    fontSize: 14,
                    color: Appcolor.bgcolor,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold),
              )
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.cgreen,
      appBar: AppBar(
        backgroundColor: Appcolor.cgreen,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Setting",
          style: TextStyle(
              color: Appcolor.bordercolor,
              fontFamily: "poppins",
              fontSize: 14,
              fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: SvgPicture.asset("assets/images/m_ic_exit.svg"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              buildprofile(),
              SizedBox(
                height: 10,
              ),
              buildCard(),
              SizedBox(
                height: 20,
              ),
              buildNotification(),
              SizedBox(
                height: 20,
              ),
              buildFeedback(),
              SizedBox(
                height: 20,
              ),
              buildHelpSuport(),
              SizedBox(
                height: 20,
              ),
              buildLogiutBtn()
            ],
          ),
        ),
      ),
    );
  }
}
