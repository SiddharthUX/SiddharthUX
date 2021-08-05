import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'AppColor.dart';
import 'guest_login.dart';

class Locatin_Set extends StatefulWidget {
  const Locatin_Set({Key? key}) : super(key: key);

  @override
  _Locatin_SetState createState() => _Locatin_SetState();
}

class _Locatin_SetState extends State<Locatin_Set> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 10,
          backgroundColor: Appcolor.white,
          elevation: 0.0,
        ),
        backgroundColor: Appcolor.bgcolor,
        body: Container(
            child: SingleChildScrollView(
          child: Column(
            //   fit: StackFit.expand,
            //  mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Appcolor.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              offset: Offset(2, 6))
                        ]),
                    child: Column(
                      children: [
                        Container(
                          //   padding: EdgeInsets.only(top: 35),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
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
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 30),
                          //  width: 300,
                          child: RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text: "Who's 1",
                              style: TextStyle(
                                  color: Appcolor.yallow,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'popping'),
                            ),
                            TextSpan(
                                text: "Works way ",
                                style: TextStyle(
                                    color: Appcolor.cgreen,
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'poppins')),
                            // TextSpan(
                            //     text: "with location on",
                            //     style: TextStyle(
                            //         color: Appcolor.cgreen,
                            //         fontSize: 20,
                            //         fontWeight: FontWeight.bold,
                            //         fontFamily: 'poppins'))
                          ])),
                        ),
                        Container(
                            child: Text(" better with location on",
                                style: TextStyle(
                                    color: Appcolor.cgreen,
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'poppins'))),
                      ],
                    ),
                  ),
                  Container(
                      // padding: EdgeInsets.only(top: 30),
                      // //  width: 300,
                      // child: RichText(
                      //     text: TextSpan(children: [
                      //   TextSpan(
                      //     text: "Who's 1",
                      //     style: TextStyle(
                      //         color: Appcolor.yallow,
                      //         fontSize: 23,
                      //         fontWeight: FontWeight.bold,
                      //         fontFamily: 'popping'),
                      //   ),
                      //   TextSpan(
                      //       text: "Works way ",
                      //       style: TextStyle(
                      //           color: Appcolor.cgreen,
                      //           fontSize: 23,
                      //           fontWeight: FontWeight.bold,
                      //           fontFamily: 'poppins')),
                      //   // TextSpan(
                      //   //     text: "with location on",
                      //   //     style: TextStyle(
                      //   //         color: Appcolor.cgreen,
                      //   //         fontSize: 20,
                      //   //         fontWeight: FontWeight.bold,
                      //   //         fontFamily: 'poppins'))
                      // ])),
                      ),
                  Container(
                      padding: EdgeInsets.only(top: 30),
                      child:
                          SvgPicture.asset("assets/images/img_location.svg")),
                  Container(
                    //  height: 50,

                    padding: EdgeInsets.all(40),
                    child: Container(
                      height: 40,
                      // decoration: BoxDecoration(color: Colors.white,
                      //     //  borderRadius: BorderRadius.circular(10),
                      //     boxShadow: [
                      //       BoxShadow(
                      //           color: Appcolor.yallow,
                      //           blurRadius: 10,
                      //           offset: Offset(0, 4))
                      //     ]),
                      child: RaisedButton(
                          elevation: 15,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Guest_login();
                                },
                              ),
                            );
                          },

                          // shape: RoundedRectangleBorder(
                          //   borderRadius: BorderRadius.circular(6),
                          // ),
                          color: Appcolor.yallow,
                          child: Stack(
                            children: [
                              Align(
                                child: Container(
                                  child: Text(
                                    "Ok, I understand",
                                    style: TextStyle(
                                        color: Appcolor.white,
                                        fontSize: 16,
                                        fontFamily: 'poppins'),
                                  ),
                                ),
                              )
                            ],
                          )),
                    ),
                  )
                ],
              )
            ],
          ),
        )));
  }
}
