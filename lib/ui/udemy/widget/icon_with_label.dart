import 'package:flutter/material.dart';

class IconWithLabel extends StatelessWidget {
  const IconWithLabel({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.textColor,
    @required this.iconColor,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final Color textColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 30,
          color: iconColor,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: TextStyle(color: textColor),
        ),
      ],
    );
  }
}
