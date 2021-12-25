import 'package:flutter/material.dart';

class BelajarTextStyle extends StatefulWidget {
  @override
  _BelajarTextStyleState createState() => _BelajarTextStyleState();
}

class _BelajarTextStyleState extends State<BelajarTextStyle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Text Style"),
      ),
      body: Center(
        child: Text(
          "Ini adalah Text",
          style: TextStyle(
              fontFamily: 'MooLahLah',
              fontSize: 30,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.overline,
              decorationColor: Colors.red,
              decorationThickness: 5,
              decorationStyle: TextDecorationStyle.wavy),
        ),
      ),
    );
  }
}
