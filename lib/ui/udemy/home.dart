import 'dart:html';

import 'package:flutter/material.dart';
import 'package:lumen_flutter/ui/udemy/presentation/home/home.dart';

class HomeUdemy extends StatelessWidget {
  // const HomeUdemy({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Udemy Tutorial',
      theme: ThemeData(primarySwatch: Colors.red),
      home: Home(),
    );
  }
}
