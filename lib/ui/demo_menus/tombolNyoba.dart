import 'package:flutter/material.dart';
import 'package:lumen_flutter/ui/fundamental/state_full_widget.dart';

class TombolNyoba extends StatelessWidget {
  const TombolNyoba({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      // width: 200,
      height: 45,
      child: MaterialButton(
        minWidth: 10.0,
        height: 42.0,
        onPressed: () {
          // Navigator.of(context).pushNamed(DemoMenus.tag);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => BelajarStatefull()));
        },
        color: Colors.lightBlueAccent,
        child: Text(
          'State Full Widget',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
