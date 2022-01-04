import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:lumen_flutter/core/models/tombol_fundamental.dart';
import 'package:lumen_flutter/ui/fundamental/animatedcontainer_gesturedetector.dart';
import 'package:lumen_flutter/ui/fundamental/anonymouse_method.dart';
import 'package:lumen_flutter/ui/fundamental/flexible_layout.dart';
import 'package:lumen_flutter/ui/fundamental/list_listview.dart';
import 'package:lumen_flutter/ui/fundamental/stack_align_widget.dart';
import 'package:lumen_flutter/ui/fundamental/state_full_widget.dart';
import 'package:lumen_flutter/ui/fundamental/text_style.dart';

class NyobaPage extends StatelessWidget {
  static String tag = 'nyoba';

  @override
  Widget build(BuildContext context) {
    // final heading = Hero(
    //     tag: 'hero',
    //     child: Padding(
    //       padding: EdgeInsets.all(16.0),
    //       child: CircleAvatar(
    //         radius: 72.0,
    //         backgroundColor: Colors.transparent,
    //       ),
    //     ));

    // final welcome = Padding(
    //   padding: EdgeInsets.all(8.0),
    //   child: Text(
    //     'Selamat Datang',
    //     style: TextStyle(fontSize: 28.0, color: Colors.blue),
    //   ),
    // );

    // final coba = Scaffold(
    //   body: Container(
    //     width: MediaQuery.of(context).size.width,
    //     padding: EdgeInsets.all(28.0),
    //     decoration: BoxDecoration(
    //         gradient: LinearGradient(colors: [
    //       Colors.blue,
    //       Colors.lightBlueAccent,
    //     ])),
    //     child: Column(
    //       children: <Widget>[heading, welcome],
    //     ),
    //   ),
    // );

    final barAtas = AppBar(
      title: Text("Flutter Fundamental"),
    );

    final tombolNyoba = Container(
      width: MediaQuery.of(context).size.width,
      // width: 200,
      height: 45,
      child: MaterialButton(
        minWidth: 10.0,
        height: 42.0,
        onPressed: () {
          // Navigator.of(context).pushNamed(NyobaPage.tag);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => BelajarStatefull()));
        },
        color: Colors.lightBlueAccent,
        child: Text(
          'State Full Widget',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );

    final tombolAnonymouseMethod = Container(
      width: MediaQuery.of(context).size.width,
      // width: 200,
      height: 45,
      child: MaterialButton(
        minWidth: 10.0,
        height: 42.0,
        onPressed: () {
          // Navigator.of(context).pushNamed(NyobaPage.tag);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => anonymouseMethod()));
        },
        color: Colors.lightBlueAccent,
        child: Text(
          'Anonymouse Method',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );

    final tombolListView = Container(
      width: MediaQuery.of(context).size.width,
      height: 45,
      child: MaterialButton(
        minWidth: 10.0,
        height: 42.0,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ListListView()));
        },
        color: Colors.lightBlue,
        child: Text(
          'List dan List View',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );

    final tombolTextStyle = Container(
      width: MediaQuery.of(context).size.width,
      height: 45,
      child: MaterialButton(
        minWidth: 10.0,
        height: 42.0,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => BelajarTextStyle()));
        },
        color: Colors.lightBlue,
        child: Text(
          'Text Style',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );

    final tombolAnimatedContainer = Container(
      width: MediaQuery.of(context).size.width,
      height: 45,
      child: MaterialButton(
        minWidth: 10.0,
        height: 42.0,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AnimatedGesture()));
        },
        color: Colors.lightBlue,
        child: Text(
          'Animated Container dan Gesture Detector',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );

    final tombolFlexibleWidget = Container(
      width: MediaQuery.of(context).size.width,
      height: 45,
      child: MaterialButton(
        minWidth: 10.0,
        height: 42.0,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => BelajarFlexibleWidget()));
        },
        color: Colors.lightBlue,
        child: Text(
          'Flexyble Widget',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );

    final tombolStackAlignWidget = Container(
      width: MediaQuery.of(context).size.width,
      height: 45,
      child: MaterialButton(
        minWidth: 10.0,
        height: 42.0,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BelajarStackAlignWidget()));
        },
        color: Colors.lightBlue,
        child: Text(
          'Stack Align Widget',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );

    final body = Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomCenter,
        // jumlah stop berbanding lurus dengan jumlah warna
        stops: [0.3, 0.6, 0.9],
        colors: [
          Color.fromRGBO(12, 235, 235, 1),
          Color.fromRGBO(32, 227, 178, 1),
          Color.fromRGBO(41, 225, 198, 1),
        ],
      )),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                stops: [
                  0.3,
                  0.6,
                  0.9
                ],
                colors: [
                  Color.fromRGBO(12, 235, 235, 1),
                  Color.fromRGBO(32, 227, 178, 1),
                  Color.fromRGBO(41, 225, 198, 1),
                ]),
            boxShadow: []),
        margin: EdgeInsets.fromLTRB(40, 35, 40, 50),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                tombolNyoba,
                SizedBox(
                  height: 10,
                ),
                tombolAnonymouseMethod,
                SizedBox(
                  height: 10,
                ),
                tombolListView,
                SizedBox(
                  height: 10,
                ),
                tombolTextStyle,
                SizedBox(
                  height: 10,
                ),
                tombolAnimatedContainer,
                SizedBox(
                  height: 10,
                ),
                tombolFlexibleWidget,
                SizedBox(
                  height: 10,
                ),
                tombolStackAlignWidget
              ],
            ),
          ],
        ),
      ),
    );

    // Center(
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [Text("nyoba halaman")],
    //   ),)

    print(tombolFundamental().dataMenu()[0]);

    return Scaffold(
      appBar: barAtas,
      body: body,
    );
  }
}
