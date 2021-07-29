import 'dart:ui';

import 'package:animation/MyHomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade900.withOpacity(0.5),
        image: DecorationImage(
          image: AssetImage("assets/bck1.jpg"),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Stack(
                children: [
                  Container(
                    color: Colors.black,
                    width: double.infinity,
                  ),
                  Positioned(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 28),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 35, horizontal: 120)),
                      Text(
                        "Sakshi's Store",
                        style: GoogleFonts.poppins(
                          fontSize: 25,
                          color: Color(0xff71332A),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(),
                    ],
                  ),
                  Positioned(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 150, 150, 100),
                      //child: tabs(),
                    ),
                  ),
                  _emailFiled(),
                  Container(
                    margin: EdgeInsets.all(40),
                    padding: EdgeInsets.only(top: 400, left: 5, right: 5),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                RaisedButton(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 18, horizontal: 100),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => MyHomePage()),
                                    );
                                  },

                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Text(
                                    "SIGN IN",
                                    style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        color: Color(0xff8C342A),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  color: Colors.white,
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ClipOval(
                                        child: Material(
                                      color: Color(0xffD7BA98),
                                      child: InkWell(
                                        child: Icon(
                                          Icons.done,
                                          color: Color(0xff8C342A),
                                          size: 20,
                                        ),
                                        onTap: () {},
                                      ),
                                    )),
                                    SizedBox(width: 6),
                                    Text(
                                      "Remember me",
                                      style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 50),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

Widget _emailFiled() {
  return Container(
    margin: EdgeInsets.all(40),
    padding: EdgeInsets.only(top: 250, left: 5, right: 5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextField(
          decoration: InputDecoration(
              focusColor: Colors.white,
              hintText: "Email address",
              fillColor: Color(0xff061420),
              hintStyle: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w300, color: Colors.white),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey))),
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(height: 30),
        TextField(
          decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: Color(0xff8C342A),
              ),
              hintText: "Enter Password",
              fillColor: Color(0xff061420),
              hintStyle: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w300, color: Colors.white),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey))),
          obscureText: true,
        ),
        SizedBox(height: 250),
        _forgotPass()
      ],
    ),
  );
}

Widget _forgotPass() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "Forgot Password?",
        style: GoogleFonts.montserrat(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}

// Widget tabs() {
//   return DefaultTabController(
//     length: 2,
//     child: TabBar(
//       tabs: [
//         Tab(
//           child: Text(
//             "Sign in",
//             style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w500),
//           ),
//         ),
//         Tab(
//           child: Text(
//             "Sign up",
//             style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w500),
//           ),
//         ),
//       ],
//       labelColor: Color(0xff71332A),
//       unselectedLabelColor: Colors.white,
//     ),
//   );
// }
