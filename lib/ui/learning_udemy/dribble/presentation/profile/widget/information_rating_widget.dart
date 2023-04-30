import 'package:flutter/material.dart';

class InformationRatting extends StatelessWidget {
  const InformationRatting(
      {Key key, @required this.subTitle, @required this.value})
      : super(key: key);

  final String subTitle;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          subTitle,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 12, color: Colors.black54),
        ),
        Text(
          value,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
      ],
    );
  }
}
