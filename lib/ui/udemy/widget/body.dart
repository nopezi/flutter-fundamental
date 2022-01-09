import 'package:flutter/material.dart';

class BodyBase extends StatelessWidget {
  // const BodyBase({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
  }
}
