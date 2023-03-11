import 'package:flutter/material.dart';
import 'package:lumen_flutter/ui/fundamental/list_listview.dart';

class TombolListView extends StatelessWidget {
  const TombolListView({Key key}) : super(key: key);

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
              context, MaterialPageRoute(builder: (context) => ListListView()));
        },
        color: Colors.lightBlue,
        child: Text(
          'List dan List View',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
