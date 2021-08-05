import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:openseat/booking_history_page/cancelled_page.dart';
import 'package:openseat/booking_history_page/completed.dart';
import 'package:openseat/booking_history_page/panding_page.dart';
import 'package:openseat/navigation/Tv_show.dart';
import 'package:openseat/user%20login/setting_page.dart';

import '../AppColor.dart';

class booking_history extends StatefulWidget {
  const booking_history({Key? key}) : super(key: key);

  @override
  _booking_historyState createState() => _booking_historyState();
}

class _booking_historyState extends State<booking_history>
    with TickerProviderStateMixin {
  _buildDetailsAndMaterialWidgets() {
    TabController tabController = new TabController(length: 3, vsync: this);
    return Container(
      decoration: BoxDecoration(
        color: Appcolor.cyan,
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(0.5),
        //     spreadRadius: 5,
        //     blurRadius: 7,
        //     offset: Offset(0, 3), // changes position of shadow
        //   ),
        // ],
      ),
      // color: Appcolor.cyan,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TabBar(
            indicatorColor: Appcolor.bordercolor,
            // labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            controller: tabController,
            // labelColor: Appcolor.cgreen,
            // unselectedLabelColor: Appcolor.yallow,
            tabs: <Widget>[
              Tab(
                child: Text(
                  "Pending",
                  style: TextStyle(
                      color: Appcolor.bordercolor,
                      fontFamily: "poppins",
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  "Completed",
                  style: TextStyle(
                      color: Appcolor.bordercolor,
                      fontFamily: "poppins",
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  "Cancelled",
                  style: TextStyle(
                      color: Appcolor.bordercolor,
                      fontFamily: "poppins",
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),

          // padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
          Expanded(
            // padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                // width: 354,
                // height: 86,
                // padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
                // color: Appcolor.redlight,
                panding_page(),

                completed_page(),

                cancelled_page()
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Appcolor.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Booking History",
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
                MaterialPageRoute(builder: (context) => setting_page()),
              );
            },
          ),
        ),
        body: Column(
          children: [Expanded(child: _buildDetailsAndMaterialWidgets())],
        ));
  }
}
