import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:openseat/list%20detail%20pages/service_deatils.dart';

import '../AppColor.dart';

class service_page extends StatefulWidget {
  const service_page({Key? key}) : super(key: key);

  @override
  _service_pageState createState() => _service_pageState();
}

class _service_pageState extends State<service_page> {
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
        body: _buildListView()
        // children: [
        //   cards(
        //     'First Window S1',
        //     'Serve Person Mahesh Parsoriya',
        //     'Wait Time',
        //     'People In-line',
        //     '00:40 hr',
        //     '2',
        //   ),
        //   cards(
        //     'Public',
        //     'Serve Person Mahesh Parsoriya',
        //     'Wait Time',
        //     'People In-line',
        //     '00:40 hr',
        //     '2',
        //   ),
        // ],

        );
  }

  ListView _buildListView() {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, indext) {
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(22),
                        //   color: Appcolor.white,
                        //   border: Border.all(
                        //     color: Colors.white,
                        //     width: 3, // red as border color
                        //   ),
                        //   boxShadow: [
                        //     BoxShadow(
                        //         color: Colors.grey,
                        //         blurRadius: 6,
                        //         offset: Offset(0, 4))
                        //   ],
                        // ),
                        child: CircleAvatar(
                          radius: 25,
                          child: Image.asset(
                            "assets/images/dp.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text("SHAVE & MASSAGE",
                          style: TextStyle(
                              fontSize: 16,
                              color: Appcolor.cgreen,
                              fontFamily: "poppins",
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                // SizedBox(
                //   height: 8,
                // ),
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Total Time",
                              style: TextStyle(
                                color: Appcolor.cgreen,
                                fontFamily: "poppins",
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              )),
                          Text(
                            "30 min",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontFamily: "poppins",
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Serve Time",
                              style: TextStyle(
                                color: Appcolor.cgreen,
                                fontFamily: "poppins",
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              )),
                          Text(
                            "03:00 am - 06:45 pm",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontFamily: "poppins",
                            ),
                          ),
                        ],
                      ),
                      // Container(
                      //   // alignment: Alignment.centerRight,
                      //   // width: 73,
                      //   height: 27,
                      //   width: 73,
                      //   child: RaisedButton(
                      //     elevation: 5,
                      //     onPressed: () {},
                      //     shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(5)),
                      //     color: Appcolor.yallow,
                      //     child: Text(
                      //       "Book",
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
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
