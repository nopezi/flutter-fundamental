import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lumen_flutter/ui/fundamental/navigation_multipage/NavigationMultiPageLoginPage.dart';

class NavigationMultipage extends StatelessWidget {
  const NavigationMultipage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NavigationMultiPageLoginPage(),
    );
  }
}
