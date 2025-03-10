import 'package:coffee_card/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Sandbox()));
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("S A N D   B O X"),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            width: 100,
            color: Colors.red[300],
            child: Text("One, One, One, One, One, One, One, One, One.", style: TextStyle(fontSize: 30)),
          ),
          Container(
            alignment: Alignment.center,
            width: 200,
            color: Colors.green[300],
            child: Text("Two", style: TextStyle(fontSize: 40)),
          ),
          Container(
            alignment: Alignment.center,
            width: 300,
            color: Colors.blue[300],
            child: Text("Three", style: TextStyle(fontSize: 50)),
          ),
        ],
      ),
    );
  }
}
