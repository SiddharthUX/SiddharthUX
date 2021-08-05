import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:openseat/list%20detail%20pages/service_deatils.dart';
import 'package:openseat/user%20login/user_login.dart';

import '../AppColor.dart';

class profile_page extends StatefulWidget {
  const profile_page({Key? key}) : super(key: key);

  @override
  _profile_pageState createState() => _profile_pageState();
}

class _profile_pageState extends State<profile_page> {
  int _value = 0;
  // int selectedradio;
  // @override
  // void initState() {
  //   super.initState();
  //   selectedradio = 0;
  // }

  // setselectedradio(int val) {
  //   setState(() {
  //     selectedradio = val;
  //   });
  // }

  Widget buildtextformfeild() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: TextFormField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                hoverColor: Appcolor.cgreen,
                focusColor: Appcolor.cgreen,
                // fillColor: Appcolor.cgreen,
                hintText: 'Enter Your Name',
                hintStyle: TextStyle(
                    color: Appcolor.cgreen,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold,
                    fontSize: 14)),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: TextFormField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                hoverColor: Appcolor.cgreen,
                focusColor: Appcolor.cgreen,
                // fillColor: Appcolor.cgreen,
                hintText: 'Enter First Name',
                hintStyle: TextStyle(
                    color: Appcolor.cgreen,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold,
                    fontSize: 14)),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: TextFormField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                hoverColor: Appcolor.cgreen,
                focusColor: Appcolor.cgreen,
                // fillColor: Appcolor.cgreen,
                hintText: 'Enter Last Name',
                hintStyle: TextStyle(
                    color: Appcolor.cgreen,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold,
                    fontSize: 14)),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                hoverColor: Appcolor.cgreen,
                focusColor: Appcolor.cgreen,
                // fillColor: Appcolor.cgreen,
                hintText: 'Enter Phon Number',
                hintStyle: TextStyle(
                    color: Appcolor.cgreen,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold,
                    fontSize: 14)),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: TextFormField(
            //  keyboardType: TextInputType.numberWithOptions(),
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                hoverColor: Appcolor.cgreen,
                focusColor: Appcolor.cgreen,
                // fillColor: Appcolor.cgreen,
                hintText: 'Enter Date Of Birth',
                hintStyle: TextStyle(
                    color: Appcolor.cgreen,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold,
                    fontSize: 14)),
          ),
        ),
      ],
    );
  }

  //String radioItem = '';
  // Widget buildradiobtn() {
  //   return Row(
  //     children: <Widget>[
  //       RadioListTile(
  //         groupValue: selectedradio,
  //         title: Text('Radio Button Item 1'),
  //         value: 'Item 1',
  //         onChanged: (val) {
  //           selectedradio;
  //         },
  //       ),
  //       RadioListTile(
  //         groupValue: selectedradio,
  //         title: Text('Radio Button Item 2'),
  //         value: 'Item 2',
  //         onChanged: (val) {
  //           setState(() {
  //             selectedradio;
  //           });
  //         },
  //       ),
  //     ],
  //   );
  // }

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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              width: double.infinity,
              height: 150,
              child: Container(
                height: 90.0,
                width: 90.0,
                decoration: BoxDecoration(
                    color: Appcolor.gray,
                    shape: BoxShape.circle,
                    border: Border.all(width: 3, color: Appcolor.white),
                    boxShadow: [
                      BoxShadow(
                        color: Appcolor.gray,
                        offset: const Offset(3.0, 6.0),
                        blurRadius: 7.0,
                        spreadRadius: 2.0,
                      ),
                    ]),
                //alignment: Alignment(0.0, 2.5),
                child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg'),
                    radius: 50.0,
                    child: Icon(
                      Icons.camera_alt_rounded,
                      size: 30,
                    )),
              ),
            ),
            buildtextformfeild(),
//Expanded(child: buildradiobtn())
            Container(
                child: Row(
              children: [
                Radio(
                    value: 1,
                    groupValue: 1,
                    activeColor: Appcolor.red,
                    onChanged: (value) {
                      setState(() {
                        _value = _value;
                      });
                    }),
                Radio(
                    value: 2,
                    groupValue: 2,
                    onChanged: (value) {
                      setState(() {
                        _value = 2;
                      });
                    })
              ],
            ))
          ],
        ),
      ),
    );
  }
}
