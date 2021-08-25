import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final bool outlineButton;
  CustomButton(
      {this.text = "Text",
      required this.onPressed,
      this.outlineButton = false});

  @override
  Widget build(BuildContext context) {
    //bool _outlineButton = outlineButton ?? false;
    return GestureDetector(
      onTap: onPressed(),
      child: Container(
        decoration: BoxDecoration(
          color: outlineButton ? Colors.transparent : Colors.black,
          border: Border.all(
            color: Colors.black,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 12.0,
        ),
        margin: EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 16.0,
              color: outlineButton ? Colors.black : Colors.white,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
