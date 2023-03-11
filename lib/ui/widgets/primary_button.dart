import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  Color color;
  String text;
  Function onClick;

  PrimaryButton(
      {@required this.color, @required this.text, @required this.onClick});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onClick,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }
}
