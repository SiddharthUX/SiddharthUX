import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:openseat/list%20detail%20pages/service_deatils.dart';

import '../AppColor.dart';

class ratting_page extends StatefulWidget {
  const ratting_page({Key? key}) : super(key: key);

  @override
  _ratting_pageState createState() => _ratting_pageState();
}

class _ratting_pageState extends State<ratting_page> {
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
      body: _buildListView(),
    );
  }
}

ListView _buildListView() {
  return ListView.builder(
    itemCount: 3,
    itemBuilder: (context, indext) {
      return Container(
        // height: 126,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // decoration: BoxDecoration(
                      //   shape: BoxShape.circle,
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
                    // SizedBox(
                    //   width: 20,
                    // ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Upasna Tiwari",
                            style: TextStyle(
                                fontSize: 16,
                                color: Appcolor.cgreen,
                                fontFamily: "poppins",
                                fontWeight: FontWeight.bold)),
                        Text("Post on July 6, 2021",
                            style: TextStyle(
                                fontSize: 12,
                                color: Appcolor.bluelight,
                                fontFamily: "poppins",
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Appcolor.yallow,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        icon: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                              "assets/images/ic_rating_list.svg",
                              color: Appcolor.white,
                            ),
                            Text(
                              "4.9",
                              style: TextStyle(
                                  color: Appcolor.white, fontSize: 12),
                            )
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => service_details()),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Divider(
                //height: 5,
                thickness: 2,
              ),
              Container(
                padding: EdgeInsets.only(top: 3),
                child: Text(
                  "Teachers & teaching method are excellent.the atmosphere of schoolis very positive for students. other curriculum activities is extremely outstanding.",
//textAlign: TextAlign.justify,
                  // maxLines: 4,r
                  style: TextStyle(
                      color: Appcolor.cgreen,
                      fontSize: 13,
                      fontFamily: "poppins",
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
