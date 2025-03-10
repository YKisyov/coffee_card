import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "My coffee ID",
          style: TextStyle(color: Colors.white60),
        ),
        backgroundColor: Colors.brown[700],
      ),
      body: Text("zzz"),
    );
  }
}
