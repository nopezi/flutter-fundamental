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

  final bodyRow = Container(
    color: Colors.green,
    child: Row(
      // mainAxisSize: MainAxisSize.min,
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Column(),
        Icon(
          Icons.headset,
          size: 50,
        ),
        Icon(
          Icons.headset,
          size: 50,
        ),
        Icon(
          Icons.headset,
          size: 50,
        ),
        Icon(
          Icons.headset,
          size: 50,
        ),
      ],
    ),
  );

  final bodyMenuIcon = Center(
    child: Container(
        color: Colors.grey[200],
        height: 80,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.phone,
                  size: 30,
                  color: Colors.blue,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "CALL",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.navigation,
                  size: 30,
                  color: Colors.blue,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "ROUTE",
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.share,
                  size: 30,
                  color: Colors.blue,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "SHARE",
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
          ],
        )),
  );

  final bodyMenuIconClean = Center(
    child: Container(
        color: Colors.grey[200],
        height: 80,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconWithLabel(
              icon: Icons.call,
              title: "CALL",
            ),
            IconWithLabel(
              icon: Icons.navigation,
              title: "ROUTE",
            ),
            IconWithLabel(
              icon: Icons.share,
              title: "SHARE",
            ),
          ],
        )),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: bodyMenuIconClean,
    );
  }
}

class IconWithLabel extends StatelessWidget {
  const IconWithLabel({
    Key key,
    @required this.icon,
    @required this.title,
  }) : super(key: key);

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 30,
          color: Colors.blue,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}
