import 'package:flutter/material.dart';
import 'package:lumen_flutter/ui/screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.lightBlue,
        accentColor: Colors.lightBlue,
      ),
      home: LoginScreen(),
      routes: {
        "/login": (context) => LoginScreen(),
//        "/register": (context) => LoginScreen(),
//        "/profile": (context) => ProfileScreen(),
      }
    );
  }
}