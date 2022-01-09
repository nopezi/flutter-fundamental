import 'package:flutter/material.dart';

class BodyKolom extends StatelessWidget {
  // const BodyKolom({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
  }
}
