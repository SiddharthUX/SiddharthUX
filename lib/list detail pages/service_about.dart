import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:openseat/AppColor.dart';
import 'package:openseat/list%20detail%20pages/service_deatils.dart';

class about_page extends StatefulWidget {
  const about_page({Key? key}) : super(key: key);

  @override
  _about_pageState createState() => _about_pageState();
}

class _about_pageState extends State<about_page> {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "About",
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
              width: 50,
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "Siddharth Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                maxLines: 30,
                style: TextStyle(
                    color: Appcolor.cgreen,
                    fontFamily: "poppiins",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 1.3),
              ),
            )
          ],
        ),
      ),
    );
  }
}
