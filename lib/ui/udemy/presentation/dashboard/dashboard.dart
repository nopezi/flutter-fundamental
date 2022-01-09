import 'dart:html';

import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  // const Dashboard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Dashboard"),
      ),
      body: RaisedButton(
        child: Text("Back"),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
