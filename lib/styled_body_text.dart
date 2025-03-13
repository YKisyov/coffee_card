import 'package:flutter/material.dart';

class MyStyledBodyText extends StatelessWidget {
const MyStyledBodyText(
  this.text, {
  super.key,
  this.color = Colors.brown,
  this.fontSize = 17,

  });

  final String text;
  final Color color;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
      ),
    );
  }
}
