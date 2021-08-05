import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../AppColor.dart';

class completed_page extends StatefulWidget {
  const completed_page({Key? key}) : super(key: key);

  @override
  _completed_pageState createState() => _completed_pageState();
}

var profileImg = [
  "assets/images/dp.png",
  "assets/images/dp.png",
];
var servicename = [
  "Women: Hair cut+ Hairwash + Deep Conditioning + Blow dry",
  "Manicure + Pedicure"
];
var username = ["Neha Rawat", "Siddharth Tiwari"];
var windowname = ["First Window S1", "First Window S2"];
var timezone = [
  "1 min ago",
  "3 day ago",
];

class _completed_pageState extends State<completed_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.bgcolor,
      body: _buildListview(),
    );
  }
}

ListView _buildListview() {
  return ListView.builder(
      itemCount: servicename.length,
      itemBuilder: (context, indext) {
        return Container(
          padding: EdgeInsets.all(10),
          child: Card(
            elevation: 10,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: CircleAvatar(
                          radius: 25,
                          child: Image.asset(
                            profileImg[indext],
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          servicename[indext],
                          overflow: TextOverflow.clip,
                          maxLines: 2,
                          style: TextStyle(
                              fontFamily: "poppins",
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      )
                    ],
                  ),
                  Divider(
                    thickness: 2,
                    indent: 3,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Guest Name",
                            style: TextStyle(
                                fontFamily: "poppins",
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan),
                          ),
                          Text(
                            username[indext],
                            style: TextStyle(
                                fontFamily: "poppins",
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Window",
                            style: TextStyle(
                                fontFamily: "poppins",
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan),
                          ),
                          Text(
                            windowname[indext],
                            style: TextStyle(
                                fontFamily: "poppins",
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        //margin: EdgeInsets.fromLTRB(30, 5, 20, 5),
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
                      Text(
                        timezone[indext],
                        style: TextStyle(
                            color: Appcolor.gray,
                            fontFamily: "poppins",
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      });
}
