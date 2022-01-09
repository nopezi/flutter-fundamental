import 'dart:html';

import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  // const Dashboard({ Key? key }) : super(key: key);
  Dashboard({this.judul, @required this.buttonText});
  final String judul;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text((judul == null) ? "Judul biasa" : judul),
      ),
      body: RaisedButton(
        child: Text(buttonText),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
