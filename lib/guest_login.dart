import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:openseat/AppColor.dart';
import 'package:openseat/home_Screen.dart';

class Guest_login extends StatefulWidget {
  const Guest_login({Key? key}) : super(key: key);

  @override
  _Guest_loginState createState() => _Guest_loginState();
}

class _Guest_loginState extends State<Guest_login> {
  String? _name;

  String? _validateNmae(String? value) {
    if (value!.isEmpty) return 'Name is required';
    final RegExp nameExp = RegExp(r'^[A-Z a-z ]+$');
    if (!nameExp.hasMatch(value)) {
      return 'please enter only alphabeticle character';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10,
        backgroundColor: Appcolor.white,
        elevation: 0,
        // title: Text(""),
      ),
      backgroundColor: Appcolor.bgcolor,
      body: Container(
        color: Appcolor.bgcolor,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(color: Appcolor.white, boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 10, offset: Offset(2, 6))
                ]),
                child: Container(
                  // padding: EdgeInsets.only(top: 25),
                  child: Column(
                    children: [
                      Row(
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
                      Container(
                        padding: EdgeInsets.only(top: 40),
                        child: Text(
                          "Whats Your Full Name ?",
                          style: TextStyle(
                              color: Appcolor.cgreen,
                              fontFamily: "poppins",
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: SvgPicture.asset("assets/images/img_profile.svg"),
              ),
              Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.center,
                child: Center(
                  child: TextFormField(
                    //obscureText: true,
                    textAlign: TextAlign.center,

                    textCapitalization: TextCapitalization.words,
                    decoration: InputDecoration.collapsed(
                        fillColor: Appcolor.bgcolor,
                        border: null,
                        filled: true,
                        hintText: "Name",
                        hoverColor: Appcolor.bgcolor,

                        //    hintTextDirection: TextDirection.tl,
                        hintStyle: TextStyle(
                            fontSize: 31,
                            color: Appcolor.cgreen,
                            fontFamily: "poppins")),
                    onSaved: (String? value) {
                      this._name = value;
                      print("name= $_name");
                    },
                    validator: _validateNmae,
                  ),
                ),
              ),
              Container(
                //  height: 50,

                padding: EdgeInsets.all(40),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(color: Colors.white,
                      //  borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Appcolor.yallow,
                            blurRadius: 10,
                            offset: Offset(0, 4))
                      ]),
                  child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return HomeScreen();
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
                            alignment: Alignment.centerRight,
                            child: Container(
                                child: SvgPicture.asset(
                                    "assets/images/Group2077.svg")),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Thanks",
                              style: TextStyle(
                                  color: Appcolor.white,
                                  fontSize: 16,
                                  fontFamily: 'poppins'),
                            ),
                          ),
                        ],
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
