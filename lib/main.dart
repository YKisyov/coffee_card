import 'package:coffee_card/Home.dart';
import 'package:flutter/material.dart';

void main() {
  print("Tesst");
  runApp(MaterialApp(home: Home()));
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
      body: Row(
        children: [
          Container(
            // alignment: Alignment.center,
            height: 100,
            color: Colors.red[300],
            child: Text("One", style: TextStyle(fontSize: 30)),
          ),
          Container(
            // alignment: Alignment.center,
            height: 200,
            color: Colors.green[300],
            child: Text("Two", style: TextStyle(fontSize: 40)),
          ),
          Container(
            // alignment: Alignment.center,
            height: 300,
            color: Colors.blue[300],
            child: Text("Three", style: TextStyle(fontSize: 50)),
          ),
        ],
      ),
    );
  }
}
