import 'package:flutter/material.dart';
import 'package:lumen_flutter/ui/learning_udemy/dribble/tombolDribble.dart';

class LearningUdemy extends StatelessWidget {
  const LearningUdemy({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result Learning From Udemy"),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(40, 35, 40, 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TombolDribble(),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
