import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:openseat/list%20detail%20pages/service_deatils.dart';
import 'package:openseat/user%20login/user_login.dart';

import '../AppColor.dart';

class contact_page extends StatefulWidget {
  contact_page({Key? key}) : super(key: key);

  @override
  _contact_pageState createState() => _contact_pageState();
}

class _contact_pageState extends State<contact_page> {
  Widget buildListItem() {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Appcolor.white,
          border: Border.all(
            color: Colors.grey,
            width: .5,
            // red as border color
          ),
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 8, offset: Offset(0, 6))
          ],
        ),
        padding: EdgeInsets.all(10),
        child: Row(
          //  crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: CircleAvatar(
                radius: 48,
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Ashutosh Tiwari",
                      style: TextStyle(
                          fontFamily: "poppins",
                          color: Appcolor.cgreen,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Member since july 2017",
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

            // Container(
            //   // alignment: Alignment.centerRight,
            //   // width: 73,
            //   height: 37,
            //   child: RaisedButton(
            //     elevation: 5,
            //     onPressed: () {},
            //     shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(5)),
            //     color: Appcolor.yallow,
            //     child: Text(
            //       "Book Now",
            //       maxLines: 1,
            //       style: TextStyle(
            //           fontFamily: "poppins",
            //           fontSize: 12,
            //           color: Appcolor.white),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  Widget buildDropdown() {
    return ExpansionTile(
      title: Container(
        alignment: Alignment.centerLeft,
        // padding: EdgeInsets.only(top: 30),
        child: Text(
          "Normal Timin",
          style: TextStyle(
            color: Appcolor.cyan,
            fontSize: 14,
            fontFamily: "poppins",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Monday",
              style: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Appcolor.cgreen),
            ),
            SizedBox(),
            Text(
              "09:00 am - 10:00 pm",
              style: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Appcolor.cgreen),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Tusday",
              style: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Appcolor.cgreen),
            ),
            Text(
              "09:00 am - 10:00 pm",
              style: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Appcolor.cgreen),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Wednessday",
              style: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Appcolor.cgreen),
            ),
            Text(
              "09:00 am - 10:00 pm",
              style: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Appcolor.cgreen),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Thursday",
              style: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Appcolor.cgreen),
            ),
            Text(
              "09:00 am - 10:00 pm",
              style: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Appcolor.cgreen),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Friday",
              style: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Appcolor.cgreen),
            ),
            Text(
              "09:00 am - 10:00 pm",
              style: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Appcolor.cgreen),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Sutterday",
              style: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Appcolor.cgreen),
            ),
            Text(
              "09:00 am - 10:00 pm",
              style: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Appcolor.cgreen),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Sunday",
              style: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Appcolor.cgreen),
            ),
            Text(
              "09:00 am - 10:00 pm",
              style: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Appcolor.cgreen),
            )
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolor.white,
        elevation: 15,
        title: Text(
          "Getanjali Salon-India'S best high..",
          style: TextStyle(
              color: Appcolor.cgreen,
              fontFamily: "poppins",
              fontSize: 14,
              fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: SvgPicture.asset("assets/images/ic_back.svg"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => service_details()),
            );
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: Appcolor.bgcolor,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Contact us",
                style: TextStyle(
                  color: Appcolor.cgreen,
                  fontFamily: "poppins",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  //decoration: TextDecoration.underline,
                ),
              ),
              Container(
                color: Appcolor.cgreen,
                height: 4,
                width: 90,
              ),
              buildListItem(),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Mobile Number",
                  style: TextStyle(
                    color: Appcolor.cyan,
                    fontSize: 14,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "+91-7415722354",
                  style: TextStyle(
                    color: Appcolor.cgreen,
                    fontSize: 15,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  "Distance",
                  style: TextStyle(
                    color: Appcolor.cyan,
                    fontSize: 14,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "3.5 Km",
                  style: TextStyle(
                    color: Appcolor.cgreen,
                    fontSize: 15,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  "Normal Timin",
                  style: TextStyle(
                    color: Appcolor.cyan,
                    fontSize: 14,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Container(
              //   padding: EdgeInsets.only(top: 15),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Text(
              //         "Monday",
              //         style: TextStyle(
              //           color: Appcolor.cgreen,
              //           fontSize: 15,
              //           fontFamily: "poppins",
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //       Container(
              //           child: Text(
              //         "10am- 6pm",
              //         style: TextStyle(
              //           color: Appcolor.cgreen,
              //           fontSize: 15,
              //           fontFamily: "poppins",
              //           fontWeight: FontWeight.bold,
              //         ),
              //       )),
              //     ],
              //   ),
              // ),
              Container(
                child: buildDropdown(),
              ),
              Container(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  "Address",
                  style: TextStyle(
                    color: Appcolor.cyan,
                    fontSize: 14,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    "asharam bapu asharam ke piche makroni sagar ",
                    maxLines: 2,
                    style: TextStyle(
                      color: Appcolor.cgreen,
                      fontSize: 15,
                      fontFamily: "poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              Container(
                padding: EdgeInsets.only(top: 30),
                color: Appcolor.yallow,
                height: 200,
                width: 400,
              )
            ],
          ),
        ),
      ),
    );
  }
}
