import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:openseat/AppColor.dart';

class login_page extends StatefulWidget {
  login_page({Key? key}) : super(key: key);

  @override
  _login_pageState createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  int _value = 1;
  Widget buildRadioBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              children: [
                Row(
                  children: [
                    Radio(
                        value: 1,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            //    _value = value;
                          });
                        }),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "email Address",
                      style: TextStyle(
                          color: Appcolor.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(width: 20),
                Row(
                  children: [
                    Radio(
                        activeColor: Appcolor.bgcolor,
                        value: 2,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            //  _value = value;
                          });
                        }),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Mobile number",
                      style: TextStyle(
                          color: Appcolor.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildEmail() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Text(
          //   'Email',
          //   style: TextStyle(
          //       color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          // ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(left: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              // boxShadow: [
              //   BoxShadow(
              //       color: Colors.black, blurRadius: 6, offset: Offset(0, 2))
              // ]
            ),
            height: 47,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  suffixIcon: Icon(Icons.email, color: Colors.teal),
                  hintText: 'enterEmail',
                  hintStyle: TextStyle(
                    color: Colors.black45,
                  )),
            ),
          )
        ],
      ),
    );
  }

  Widget buildPassword() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Text(
          //   'password',
          //   style: TextStyle(
          //       color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          // ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(left: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 2))
                ]),
            height: 47,
            child: TextField(
              obscureText: true,
              style: TextStyle(color: Colors.black12),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  suffixIcon: Icon(Icons.lock, color: Colors.teal),
                  hintText: 'enterpassword',
                  hintStyle: TextStyle(
                    color: Colors.black45,
                  )),
            ),
          )
        ],
      ),
    );
  }

  Widget buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
      // width: double.infinity,
      child: Container(
        width: 450,
        alignment: Alignment.center,
        height: 47,
        child: RaisedButton(
          // elevation: 5,
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) {
            //       return Home_screen();
            //     },
            //   ),
            // );
          },

          padding: EdgeInsets.all(15),

          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Colors.yellow[900],
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Sign in',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 5),
                child: SvgPicture.asset(
                  "assets/images/btn_arrow_white.svg",
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildForgotPassBtn() {
    return Container(
      alignment: Alignment.center,
      child: FlatButton(
        onPressed: () => print("forgot password"),
        padding: EdgeInsets.only(right: 40),
        child: Text(
          'Forgot Password ?',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget buildSignupBtn() {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 25,
      ),
      // width: double.infinity,
      child: Container(
        width: 450,
        alignment: Alignment.center,
        height: 47,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              primary: Appcolor.yallow,
              side: BorderSide(color: Appcolor.yallow)),
          // elevation: 5,
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) {
            //       return Home_screen();
            //     },
            //   ),
            // );
          },

          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'New User? Creat Account',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.cgreen,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Appcolor.cgreen,
        elevation: 0,
        title: Text(
          "Sign in",
          style: TextStyle(
              color: Appcolor.redlight,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: SvgPicture.asset("assets/images/ic_close.svg"),
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => HomeScreen()),
            // );
          },
        ),
      ),
      body: Container(
        color: Appcolor.cgreen,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(25, 20, 0, 0),
                alignment: Alignment.centerLeft,
                // padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                // child: Image.asset("assets/images/hello.svg")
                child: Text(
                  "Hello ",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Appcolor.white),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(25, 20, 0, 0),
                alignment: Alignment.centerLeft,
                //  padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                child: Text(
                  "There",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Appcolor.white),
                ),
              ),
              buildRadioBtn(),
              buildEmail(),
              buildPassword(),
              buildLoginBtn(),
              buildForgotPassBtn(),
              SizedBox(
                height: 50,
              ),
              buildSignupBtn()
            ],
          ),
        ),
      ),
    );
  }
}
