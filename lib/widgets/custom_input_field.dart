import 'package:flutter/material.dart';
import 'package:online_store/constants.dart';

class CustomInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
      decoration: BoxDecoration(
        color: Color(0xFF2F2F2),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Email...",
            contentPadding:
                EdgeInsets.symmetric(horizontal: 24.0, vertical: 18.0)),
        style: Constants.regularDarkText,
      ),
    );
  }
}
