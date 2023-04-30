import 'package:flutter/material.dart';
import 'package:lumen_flutter/ui/fundamental/MediaQueryTest.dart';

class TombolMediaQuery extends StatelessWidget {
  const TombolMediaQuery({Key key}) : super(key: key);

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
              MaterialPageRoute(builder: (context) => MediaQueryTest()));
        },
        color: Colors.lightBlue,
        child: Text(
          'Media Query',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
