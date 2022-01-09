import 'package:flutter/material.dart';
import 'package:lumen_flutter/ui/udemy/widget/icon_with_label.dart';

class BodyMenuIconClean extends StatelessWidget {
  // const BodyMenuIconClean({ Key? key }) : super(key: key);

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
    );
  }
}
