import 'package:flutter/material.dart';
import 'package:lumen_flutter/ui/udemy/presentation/dashboard/dashboard.dart';
import 'package:lumen_flutter/ui/udemy/widget/icon_with_label.dart';

class BodyButton extends StatelessWidget {
  // const BodyButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: RaisedButton(
            splashColor: Colors.blue,
            child: Text("Go to dashboard"),
            onPressed: () {
              // Navigator.of(context).pushReplacement(
              //     MaterialPageRoute(builder: (context) => Dashboard()));
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Dashboard()));
            },
          ),
        ),
        Container(
            color: Colors.grey[200],
            height: 80,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconWithLabel(
                  icon: Icons.call,
                  title: "CALL",
                  iconColor: Colors.blue,
                  textColor: Colors.blue,
                ),
                IconWithLabel(
                  icon: Icons.navigation,
                  title: "ROUTE",
                  iconColor: Colors.blue,
                  textColor: Colors.blue,
                ),
                IconWithLabel(
                  icon: Icons.share,
                  title: "SHARE",
                  iconColor: Colors.blue,
                  textColor: Colors.blue,
                ),
              ],
            )),
      ],
    );
  }
}
