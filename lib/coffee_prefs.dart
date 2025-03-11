import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  final minCoffeeStrenghtAllowance = 1;
  final minSugarAllowance = 0;
  final maxCoffeeStrenghtAllowance = 5;
  final maxSugarAllowance = 5;

  

  int coffeeStrength = 1;
  int prefferedSugar = 1;

  void increaseCoffeeStrength() {
    setState(() {
      coffeeStrength =
          coffeeStrength < maxCoffeeStrenghtAllowance
              ? ++coffeeStrength
              : minCoffeeStrenghtAllowance;
    });
    print(
      "Strength button was pressed. Value of coffeeStrenght is $coffeeStrength",
    );
  }

  void increaseSugarStrength() {
    setState(() {
      prefferedSugar =
          prefferedSugar < maxSugarAllowance
              ? ++prefferedSugar
              : minSugarAllowance;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text("Strenght: "),
            Text("$coffeeStrength"),
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
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
              ),
            ),
          ],
        ),
        Row(
          children: [
            const Text("Sugars: "),
            Text("$prefferedSugar"),
            SizedBox(width: 3),

            ...generateListOfImages(
              prefferedSugar,
              "assets/img/sugar_cube.png",
              35.0,
            ),

            Expanded(child: SizedBox(width: 50)),
            FilledButton(
              onPressed: increaseSugarStrength,
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown[200],
                foregroundColor: Colors.white,
              ),
              child: Text(
                "+",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
              ),
            ),
          ],
        ),
      ],
    );
  }

  List<Widget> generateListOfImages(
    int numberOfElements,
    String fullLocalPathOfImageNameAndExtentions,
    double width,
  ) {
    List<Widget> resultingRowOfImagees = [];
    for (int i = 0; i < numberOfElements; i++) {
      resultingRowOfImagees.add(
        Image.asset(
          fullLocalPathOfImageNameAndExtentions,
          width: width,
          color: Colors.brown[100],
          colorBlendMode: BlendMode.multiply,
        ),
      );
    }
    return resultingRowOfImagees;
  }
}
