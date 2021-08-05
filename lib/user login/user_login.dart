import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../AppColor.dart';
import '../home_Screen.dart';

class user_login extends StatefulWidget {
  const user_login({Key? key}) : super(key: key);

  @override
  _user_loginState createState() => _user_loginState();
}

class _user_loginState extends State<user_login> {
  Widget buildPhon() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(9),
              // boxShadow: [
              //   BoxShadow(
              //       color: Colors.black, blurRadius: 6, offset: Offset(0, 2))
              // ]
            ),
            height: 47,
            child: TextFormField(
              keyboardType: TextInputType.phone,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  suffixIcon:
                      Icon(Icons.format_list_numbered, color: Colors.black54),
                  hintText: 'Phon number',
                  hintStyle: TextStyle(
                    color: Colors.black54,
                  )),
            ),
          )
        ],
      ),
    );
  }

  Widget buildOTPBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
      // width: double.infinity,
      child: Container(
        width: 450,
        alignment: Alignment.center,
        height: 47,
        child: RaisedButton(
          // elevation: 5,
          onPressed: () {
            _bottomsheet(context);
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) {
            //       return Home_screen();
            //     },
            //   ),
            // );
          },

          padding: EdgeInsets.all(15),

          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
          color: Appcolor.yallow,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Get OTP',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 5),
                child: SvgPicture.asset(
                  "assets/images/btn_arrow_white.svg",
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.cgreen,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Appcolor.cgreen,
        elevation: 0,
        title: Text(
          "Sign in",
          style: TextStyle(
              color: Appcolor.redlight,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: SvgPicture.asset("assets/images/ic_close.svg"),
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => HomeScreen()),
            // );
          },
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(25, 20, 0, 0),
              alignment: Alignment.centerLeft,
              // padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
              // child: Image.asset("assets/images/hello.svg")
              child: Text(
                "Hello ",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Appcolor.white),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(25, 20, 0, 0),
              alignment: Alignment.centerLeft,
              //  padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
              child: Text(
                "There",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Appcolor.white),
              ),
            ),
            buildPhon(),
            buildOTPBtn()
          ],
        ),
      ),
    );
  }
}

class widget {}

_bottomsheet(context) {
  Widget buildEnterOTP() {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(9),
              // boxShadow: [
              //   BoxShadow(
              //       color: Colors.black, blurRadius: 6, offset: Offset(0, 2))
              // ]
            ),
            height: 47,
            width: 370,
            child: TextFormField(
              keyboardType: TextInputType.phone,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  suffixIcon:
                      Icon(Icons.format_list_numbered, color: Colors.black54),
                  hintText: 'Enter OTP',
                  hintStyle: TextStyle(
                    color: Colors.black54,
                  )),
            ),
          )
        ],
      ),
    );
  }

  Widget buildVerifyRady() {
    return Container(
      padding: EdgeInsets.only(top: 10),
      // width: double.infinity,
      child: Container(
        width: 320,
        alignment: Alignment.center,
        height: 47,
        child: RaisedButton(
          // elevation: 5,
          onPressed: () {
            _bottomsheet(context);
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) {
            //       return Home_screen();
            //     },
            //   ),
            // );
          },

          padding: EdgeInsets.all(15),

          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
          color: Appcolor.yallow,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Verify & Ready',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 5),
                child: SvgPicture.asset(
                  "assets/images/btn_arrow_white.svg",
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildResand() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: 'Dont received OTP?',
                style: TextStyle(
                    fontFamily: "poppins",
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w500)),
            TextSpan(
                text: 'Resand',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: "poppins",
                    color: Appcolor.cyan,
                    fontWeight: FontWeight.bold))
          ]),
        ),
      ),
    );
  }

  showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      backgroundColor: Appcolor.cgreen,
      context: context,
      builder: (BuildContext c) {
        return Wrap(
          children: [
            Card(
              color: Appcolor.cgreen,
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        "Verify Mobile Number",
                        style: TextStyle(
                            fontFamily: "poppins",
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            color: Appcolor.redlight),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        "OTP has been sand to you on your ",
                        style: TextStyle(
                            fontFamily: "poppins",
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Appcolor.white),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "mobile number plz enter it below",
                        style: TextStyle(
                            fontFamily: "poppins",
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Appcolor.white),
                      ),
                    ),
                    buildEnterOTP(),
                    buildResand(),
                    buildVerifyRady()
                  ],
                ),
              ),
            ),
          ],
        );
      });
}

setState(Null Function() param0) {}
