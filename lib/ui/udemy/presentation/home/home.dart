import 'package:flutter/material.dart';
import 'package:lumen_flutter/ui/udemy/widget/body_button.dart';
import 'package:lumen_flutter/ui/udemy/widget/icon_with_label.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: BodyButton(),
    );
  }
}
