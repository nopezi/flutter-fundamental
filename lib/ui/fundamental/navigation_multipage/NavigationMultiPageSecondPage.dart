import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NavigationMultiPageSecondPage extends StatelessWidget {
  const NavigationMultiPageSecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: MaterialButton(
            child: Text(
              "Back",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.lightBlue,
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}
