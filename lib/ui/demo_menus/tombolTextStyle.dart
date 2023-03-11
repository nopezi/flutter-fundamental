import 'package:flutter/material.dart';
import 'package:lumen_flutter/ui/fundamental/text_style.dart';

class TombolTextStyle extends StatelessWidget {
  const TombolTextStyle({Key key}) : super(key: key);

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
              MaterialPageRoute(builder: (context) => BelajarTextStyle()));
        },
        color: Colors.lightBlue,
        child: Text(
          'Text Style',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
