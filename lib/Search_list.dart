import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:openseat/home_Screen.dart';
import 'package:openseat/list%20detail%20pages/service_deatils.dart';

import 'package:openseat/locatin_Set.dart';

import 'AppColor.dart';

class Search_List extends StatefulWidget {
  const Search_List({Key? key}) : super(key: key);

  @override
  _Search_ListState createState() => _Search_ListState();
}

class _Search_ListState extends State<Search_List> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffFBF8F3),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 20,
        shadowColor: Colors.black.withOpacity(.7),
        leading: IconButton(
          icon: SvgPicture.asset("assets/images/ic_back.svg"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: IconButton(
              icon: SvgPicture.asset('assets/images/ic_map.svg'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 13, 10, 13),
            child: IconButton(
              icon: SvgPicture.asset('assets/images/ic_filter.svg'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
            ),
          ),
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(15, 20, 15, 20),
            height: 48,
            width: 300,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.2),
                  blurRadius: 25,
                  offset: Offset(0, 10),
                ),
              ],
              border: Border.all(
                color: Color(0xff16554D).withOpacity(.4),
                width: 1,
              ),
            ),
            child: TextField(
              style: TextStyle(color: Colors.white.withOpacity(.8)),
              cursorColor: Color(0xff16554D).withOpacity(.7),
              // obscureText: isPassword,
              // keyboardType:
              // isEmail ? TextInputType.emailAddress : TextInputType.text,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black.withOpacity(.5),
                ),
                border: InputBorder.none,
                hintMaxLines: 1,
                hintText: 'Apna Salon near me',
                hintStyle: TextStyle(
                    fontSize: 15,
                    color: Color(0xff16554D).withOpacity(.8),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          cards(
            'Geetanjali Salon',
            'Salon & Spa',
            '12.22km - 604B, Shri Vinayak Tower near blah blah',
            '9:00 am - 0:30 pm',
            '3.5',
            Colors.green,
          ),
          cards(
            'Apna Car CAre',
            'Repair Service',
            '12.22km - 604B, Shri Vinayak Tower near blah blah',
            '10:30 am - 11:00 pm',
            '2.5',
            Colors.red,
          ),
          cards(
            'Apna Parlor Salon',
            'Salon & Spa',
            '12.22km - 604B, Shri Vinayak Tower near blah blah',
            '10:30 am - 11:00 pm',
            '5.0',
            Colors.green,
          ),
          cards(
            'Apna Restaurent',
            'Restaurant',
            '12.22km - 604B, Shri Vinayak Tower near blah blah',
            '10:30 am - 11:00 pm',
            '4.3',
            Colors.green,
          ),
          cards(
            'Apna Parlor Salon',
            'Salon & Spa',
            '12.22km - 604B, Shri Vinayak Tower near blah blah',
            '10:30 am - 11:00 pm',
            '5.0',
            Colors.green,
          ),
          cards(
            'Apna Parlor Salon',
            'Salon & Spa',
            '12.22km - 604B, Shri Vinayak Tower near blah blah',
            '10:30 am - 11:00 pm',
            '5.0',
            Colors.green,
          ),
        ],
      ),
    );
  }

  Widget cards(
    String text1,
    String text2,
    String text3,
    String text4,
    String text5,
    Color dotColor,
  ) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return GestureDetector(
      child: Container(
        // padding: EdgeInsets.all(10),
        margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
        // height: 100,
        // width: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(.2), blurRadius: .5),
          ],
        ),
        child: Stack(
          children: [
            Row(
              children: [
                Container(
                  // margin: EdgeInsets.only(left: 4),
                  height: 90,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.amberAccent.withOpacity(.8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset('assets/images/listimage.png'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 8),
                  // padding: EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text1,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.5,
                        ),
                      ),
                      Text(
                        text2,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 11,
                          color: Color(
                            0xff3AA39E,
                          ),
                        ),
                      ),
                      Container(
                        width: width,
                        child: Text(
                          text3,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          style: TextStyle(
                            color: Colors.black.withOpacity(.6),
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Container(
                        // width: 250,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.opacity,
                              size: 17,
                              color: Colors.black38,
                            ),
                            // SizedBox(width: 3),
                            Text(
                              text4,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                                color: Colors.black.withOpacity(.5),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                  "assets/images/ic_rating_list.svg"),
                            ),
                            Text(
                              text5,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                                color: Appcolor.yallow,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(75, 1, 0, 0),
              child: Container(
                height: 14,
                width: 14,
                decoration: BoxDecoration(
                  color: dotColor,
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 2.5,
                    color: Colors.white,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.3),
                      blurRadius: 10,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return service_details();
            },
          ),
        );
      },
    );
  }
}
