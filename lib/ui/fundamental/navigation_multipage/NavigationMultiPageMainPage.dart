import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lumen_flutter/ui/fundamental/navigation_multipage/NavigationMultiPageSecondPage.dart';

class NavigationMultiPageMainPage extends StatelessWidget {
  const NavigationMultiPageMainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Center(
        child: MaterialButton(
          child: Text(
            "Go to Second Page",
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.lightBlue,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NavigationMultiPageSecondPage();
            }));
          },
        ),
      ),
    );
  }
}
