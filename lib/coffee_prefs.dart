import 'package:flutter/material.dart';

class CoffeePrefs extends StatelessWidget {
  const CoffeePrefs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text("Strenght: "),
            const Text("3"),
            SizedBox(width: 3),
            Image.asset(
              "assets/img/coffee_bean.png",
              width: 35,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            Expanded(child: SizedBox(width: 50)),
            FilledButton(
              onPressed: increaseCoffeeStrength,
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown[200],
                foregroundColor: Colors.white,
                ),
              child: Text(
                "+",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            const Text("Sugars: "),
            const Text("3"),
            SizedBox(width: 3),
            Image.asset(
              "assets/img/sugar_cube.png",
              width: 35,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            Expanded(child: SizedBox(width: 50)),
            FilledButton(
              onPressed: increaseCoffeeStrength,
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown[200],
                foregroundColor: Colors.white,
                ),
              child: Text(
                "+",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

void increaseCoffeeStrength() {
  print("Coffee was Strengthened.");
}

void increaseSugarStrength() {
  print("Added more sugar.");
}
