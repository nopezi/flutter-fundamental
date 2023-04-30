import 'package:flutter/material.dart';
import 'package:lumen_flutter/ui/fundamental/CardWidgetCustom.dart';

class TombolCardWidgetCustom extends StatelessWidget {
  const TombolCardWidgetCustom({Key key}) : super(key: key);

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
              MaterialPageRoute(builder: (context) => CardWidgetCustom()));
        },
        color: Colors.lightBlue,
        child: Text(
          'Card Widget Custom',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
