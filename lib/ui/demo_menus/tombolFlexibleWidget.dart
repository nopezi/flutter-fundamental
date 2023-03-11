import 'package:flutter/material.dart';
import 'package:lumen_flutter/ui/fundamental/flexible_layout.dart';

class TombolFlexibleWidget extends StatelessWidget {
  const TombolFlexibleWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 45,
      child: MaterialButton(
        minWidth: 10.0,
        height: 42.0,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => BelajarFlexibleWidget()));
        },
        color: Colors.lightBlue,
        child: Text(
          'Flexyble Widget',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
