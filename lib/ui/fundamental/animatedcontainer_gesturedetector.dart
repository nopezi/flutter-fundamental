import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedGesture extends StatefulWidget {
  @override
  _AnimatedGestureState createState() => _AnimatedGestureState();
}

class _AnimatedGestureState extends State<AnimatedGesture> {
  // random.nextInt() digunakan untuk merandom angka
  // dari 0 sampai yang telah di tentukan
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Animated Container Gesture Detector"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {});
          },
          child: AnimatedContainer(
            color: Color.fromARGB(255, random.nextInt(255), random.nextInt(255),
                random.nextInt(255)),
            duration: Duration(seconds: 3),
            width: 50.0 + random.nextInt(101),
            height: 50.0 + random.nextInt(101),
          ),
        ),
      ),
    );
  }
}
