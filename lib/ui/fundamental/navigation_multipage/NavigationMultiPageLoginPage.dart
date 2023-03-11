import 'package:flutter/material.dart';
import 'package:lumen_flutter/ui/fundamental/navigation_multipage/NavigationMultiPageMainPage.dart';

class NavigationMultiPageLoginPage extends StatelessWidget {
  const NavigationMultiPageLoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          child: Text(
            "Login",
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.lightBlue,
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return NavigationMultiPageMainPage();
            }));
          },
        ),
      ),
    );
  }
}
