import 'package:flutter/material.dart';
import 'package:lumen_flutter/ui/fundamental/CardWidget.dart';

class TombolCardWidget extends StatelessWidget {
  const TombolCardWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 45,
      child: MaterialButton(
        minWidth: 10.0,
        height: 42.0,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CardWidget()));
        },
        color: Colors.lightBlue,
        child: Text(
          'Card Widget',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
