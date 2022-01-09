import 'package:flutter/material.dart';

class BodyRow extends StatelessWidget {
  // const BodyRow({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
  }
}
