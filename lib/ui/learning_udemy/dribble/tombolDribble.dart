import 'package:flutter/material.dart';
import 'package:lumen_flutter/ui/learning_udemy/dribble/presentation/app_widget.dart';

class TombolDribble extends StatelessWidget {
  const TombolDribble({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 100,
      // width: 45,
      height: 45,
      child: MaterialButton(
        minWidth: 10.0,
        height: 42.0,
        color: Colors.lightBlueAccent,
        child: Text(
          'Design Dribble',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AppWidget()));
        },
      ),
    );
  }
}
