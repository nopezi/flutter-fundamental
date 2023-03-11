import 'package:flutter/material.dart';
import 'package:lumen_flutter/ui/fundamental/AppbarGradasi.dart';

class TombolAppbarGradasi extends StatelessWidget {
  const TombolAppbarGradasi({Key key}) : super(key: key);

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
              MaterialPageRoute(builder: (context) => AppbarGradasi()));
        },
        color: Colors.lightBlue,
        child: Text(
          'Appbar Gradasi',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
