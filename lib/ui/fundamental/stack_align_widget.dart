import 'package:flutter/material.dart';

class BelajarStackAlignWidget extends StatelessWidget {
  // const BelajarStackAlignWidget({ Key? key }) : super(key: key);

  final background = Column(
    children: [
      Flexible(
        flex: 1,
        child: Row(
          children: [
            Flexible(
                flex: 1,
                child: Container(
                  color: Colors.white,
                )),
            Flexible(
                flex: 1,
                child: Container(
                  color: Colors.black12,
                )),
          ],
        ),
      ),
      Flexible(
        flex: 1,
        child: Row(
          children: [
            Flexible(
                flex: 1,
                child: Container(
                  color: Colors.black12,
                )),
            Flexible(
                flex: 1,
                child: Container(
                  color: Colors.white,
                )),
          ],
        ),
      ),
    ],
  );

  final isiText = ListView(
    children: [
      Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              "ini adalah text yang ada di laposan tengah dari stack",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              "ini adalah text yang ada di laposan tengah dari stack",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              "ini adalah text yang ada di laposan tengah dari stack",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              "ini adalah text yang ada di laposan tengah dari stack",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              "ini adalah text yang ada di laposan tengah dari stack",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              "ini adalah text yang ada di laposan tengah dari stack",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              "ini adalah text yang ada di laposan tengah dari stack",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              "ini adalah text yang ada di laposan tengah dari stack",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      )
    ],
  );

  final tombol = Align(
    // alignment: Alignment.bottomCenter,
    // custom
    alignment: Alignment(0, 0.9),
    child: RaisedButton(
      child: Text("My Button"),
      color: Colors.amber,
      onPressed: () {},
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Stack Align Widget"),
      ),
      body: Stack(
        children: [background, isiText, tombol],
      ),
    );
  }
}
