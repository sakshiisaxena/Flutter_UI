import 'package:animation/details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset('assets/back.jpg', fit: BoxFit.fitHeight),
                Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 40.0),
                      // Text(
                      //   'Handpicked Styles',
                      //   style: TextStyle(
                      //       fontFamily: 'Montserrat',
                      //       fontSize: 40.0,
                      //       color: Colors.black),
                      // ),
                      Padding(
                        padding: EdgeInsets.only(top: 270.0, left: 40, right: 40),
                        child: Text(
                        'Pick your style from a unique collection of Outerwear for 2021 Summer',
                          textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                      ),
                      SizedBox(height: 40.0),
                      FloatingActionButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DetailInfo()
                          ));
                        },

                        elevation: 0.0,
                        backgroundColor: Colors.white,
                        child: Center(
                            child: Icon(Icons.arrow_forward, color: Colors.black)),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Image.asset('assets/back.jpg', fit: BoxFit.cover, height: 404.0, width: 700,)
              ],
            )
          ],
        ));
  }
}