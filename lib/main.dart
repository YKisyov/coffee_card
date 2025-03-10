import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "> > My coffee ID < <",
            style: TextStyle(color: Colors.white60),
          ),
          backgroundColor: Colors.brown[700],
        ),
        body: Home(),
      ),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      padding: EdgeInsets.all(50),
      child: Text("Драсти Нинджа",
        style: TextStyle(
          fontSize: 32,
          letterSpacing: 18,
          fontStyle: FontStyle.italic,
        ),),
    );
  }
}
