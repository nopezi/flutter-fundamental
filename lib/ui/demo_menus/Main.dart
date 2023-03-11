import 'package:flutter/material.dart';
import 'package:lumen_flutter/ui/demo_menus/tombolAnimatedContainer.dart';
import 'package:lumen_flutter/ui/demo_menus/tombolAnonymouseMethod.dart';
import 'package:lumen_flutter/ui/demo_menus/tombolAppbarGradasi.dart';
import 'package:lumen_flutter/ui/demo_menus/tombolCardWidget.dart';
import 'package:lumen_flutter/ui/demo_menus/tombolFlexibleWidget.dart';
import 'package:lumen_flutter/ui/demo_menus/tombolListView.dart';
import 'package:lumen_flutter/ui/demo_menus/tombolNavigationMultiPage.dart';
import 'package:lumen_flutter/ui/demo_menus/tombolNyoba.dart';
import 'package:lumen_flutter/ui/demo_menus/tombolTextFieldWidget.dart';
import 'package:lumen_flutter/ui/demo_menus/tombolTextStyle.dart';
import 'package:lumen_flutter/ui/fundamental/AppbarGradasi.dart';
import 'package:lumen_flutter/ui/fundamental/CardWidget.dart';
import 'package:lumen_flutter/ui/fundamental/animatedcontainer_gesturedetector.dart';
import 'package:lumen_flutter/ui/fundamental/anonymouse_method.dart';
import 'package:lumen_flutter/ui/fundamental/flexible_layout.dart';
import 'package:lumen_flutter/ui/fundamental/list_listview.dart';
import 'package:lumen_flutter/ui/fundamental/navigation_multipage/navigation_multipage.dart';
import 'package:lumen_flutter/ui/fundamental/state_full_widget.dart';
import 'package:lumen_flutter/ui/fundamental/text_style.dart';

class LearningMenus extends StatelessWidget {
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
                TombolNyoba(),
                SizedBox(
                  height: 10,
                ),
                TombolAnonymouseMethod(),
                SizedBox(
                  height: 10,
                ),
                TombolListView(),
                SizedBox(
                  height: 10,
                ),
                TombolTextStyle(),
                SizedBox(
                  height: 10,
                ),
                TombolAnimatedContainer(),
                SizedBox(
                  height: 10,
                ),
                TombolFlexibleWidget(),
                SizedBox(
                  height: 10,
                ),
                TombolNavigationMultiPage(),
                SizedBox(
                  height: 10,
                ),
                TombolAppbarGradasi(),
                SizedBox(
                  height: 10,
                ),
                TombolCardWidget(),
                SizedBox(
                  height: 10,
                ),
                TombolTextFieldWidget(),
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

    return Scaffold(appBar: barAtas, body: body);
  }
}
