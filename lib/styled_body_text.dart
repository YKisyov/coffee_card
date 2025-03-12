import 'package:flutter/material.dart';

class MyStyledBodyText extends StatelessWidget {
const MyStyledBodyText(
  this.text, {
  super.key,
  this.color = Colors.brown,
  });

  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: 17,
      ),
    );
  }
}
