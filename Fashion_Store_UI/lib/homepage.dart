import 'dart:ui';

import 'package:animation/SignIn.dart';
import 'package:animation/SignUp.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade200.withOpacity(0.5),
        image: DecorationImage(
            image: AssetImage("assets/bck1.jpg"),
            fit: BoxFit.fitHeight,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 85,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Hey,\nSakshi",
                  style:  TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal),
                ),
                Text("|",
                    style:  TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w300)),
                Text(
                  " Welcome",
                  style:
                      TextStyle(fontSize: 20, color: Color(0xff8C342A)),
                )
              ],
            ),
            SizedBox(
              height: 400,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    height: 45,
                    width: 120,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignIn()),
                        );
                      },
                      child: Text(
                        "SIGN IN",
                        style: TextStyle(
                            fontFamily: "SFUIText",
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff8C342A),
                        ),
                      ),
                      color: Color(0xffD7BA98),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  SizedBox(
                    height: 45,
                    width: 120,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(
                            fontFamily: "SFUIText",
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff8C342A)),
                      ),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 27,
            ),
            Center(
              child: Text(
                "By continuing, you agree to our Terms and",
                style: TextStyle(
                    fontFamily: "SFUIText",
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            Center(
              child: Text(
                "Conditions.",
                style: TextStyle(
                    fontFamily: "SFUIText",
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
      ),
    );
  }
}
