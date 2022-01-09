import 'package:flutter/material.dart';

class BodyMenuIcon extends StatelessWidget {
  // const BodyMenuIcon({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          color: Colors.grey[200],
          height: 80,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.phone,
                    size: 30,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "CALL",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.navigation,
                    size: 30,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "ROUTE",
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.share,
                    size: 30,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "SHARE",
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
