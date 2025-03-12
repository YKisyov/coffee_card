import 'package:flutter/material.dart';

class MyStyledButton extends StatelessWidget {
  const MyStyledButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  final void Function() onPressed;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      
      style: TextButton.styleFrom(
        elevation: 10,
        backgroundColor: Colors.brown[400],
        foregroundColor: Colors.white,
        textStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w900
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
        ),
      ),
      child: child,
    );
  }
}
