import 'package:flutter/material.dart';
import 'package:lumen_flutter/ui/fundamental/navigation_multipage/navigation_multipage.dart';

class TombolNavigationMultiPage extends StatelessWidget {
  const TombolNavigationMultiPage({Key key}) : super(key: key);

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
              MaterialPageRoute(builder: (context) => NavigationMultipage()));
        },
        color: Colors.lightBlue,
        child: Text(
          'Navigation Multi Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
