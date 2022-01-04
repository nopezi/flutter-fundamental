import 'dart:html';

import 'package:flutter/material.dart';

class HomeUdemy extends StatelessWidget {
  // const HomeUdemy({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Udemy Tutorial',
      theme: ThemeData(primarySwatch: Colors.red),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  // const Home({ Key? key }) : super(key: key);

  final appbar = AppBar(
    backgroundColor: Colors.blueAccent,
    title: Text(
      "Udemy Flutter",
      style: TextStyle(
          // color: Colors.black,
          fontWeight: FontWeight.bold),
    ),
    actions: [
      Icon(Icons.account_circle),
      Icon(Icons.group),
    ],
  );

  final body = Container(
    // margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
    // padding: EdgeInsets.all(20),
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
    color: Colors.indigo,
    child: Icon(
      Icons.headset,
      color: Colors.white,
      size: 100,
    ),
  );

  final bodyKolom = Container(
    color: Colors.green,
    child: Column(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      // crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "ini adalah text",
          style: TextStyle(fontSize: 30),
        ),
        Text(
          "ini adalah text",
          style: TextStyle(fontSize: 30),
        ),
        Text(
          "ini adalah hari minggu",
          style: TextStyle(fontSize: 30),
        ),
        Text(
          "ini adalah text",
          style: TextStyle(fontSize: 30),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: bodyKolom,
    );
  }
}
