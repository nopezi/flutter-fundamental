import 'package:flutter/material.dart';
import 'package:lumen_flutter/ui/fundamental/animatedcontainer_gesturedetector.dart';

class TombolAnimatedContainer extends StatelessWidget {
  const TombolAnimatedContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 45,
      child: MaterialButton(
        minWidth: 10.0,
        height: 42.0,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AnimatedGesture()));
        },
        color: Colors.lightBlue,
        child: Text(
          'Animated Container dan Gesture Detector',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
