import 'package:flutter/material.dart';

class BelajarFlexibleWidget extends StatelessWidget {
  // const BelajarFlexibleWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Flexible Widget"),
      ),
      body: Column(
        children: [
          Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.all(5),
                      color: Colors.orange,
                    ),
                    flex: 1,
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.all(5),
                      color: Colors.purple,
                    ),
                    flex: 1,
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.all(5),
                      color: Colors.black,
                    ),
                    flex: 1,
                  ),
                ],
              )),
          Flexible(
            child: Container(
              margin: EdgeInsets.all(5),
              color: Colors.blue,
            ),
            flex: 2,
          ),
          Flexible(
            child: Container(
              margin: EdgeInsets.all(5),
              color: Colors.yellow,
            ),
            flex: 1,
          )
        ],
      ),
    );
  }
}
