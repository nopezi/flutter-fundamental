import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  TextEditingController controller;
  TextInputAction action;
  TextInputType type;
  String hinText;
  bool secureText;
  bool readOnly;
  Function onTap;

  InputField({
    this.controller, this.action,
    this.type, this.hinText, this.secureText = false,
    this.onTap, this.readOnly = false
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: TextField(
          controller: controller,
          onTap: () => onTap != null ? onTap() : {},
          textInputAction: TextInputAction.next,
          keyboardType: type,
          obscureText: secureText,
          readOnly: readOnly,
          decoration: InputDecoration(
            hintText: hinText,
            border: InputBorder.none,



          ),
        ),
      ),
    );
  }

}