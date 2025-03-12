import 'package:coffee_card/styled_body_text.dart';
import 'package:coffee_card/styled_button.dart';
import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class Assets {
  static const String coffeeBeanImg = "assets/img/coffee_bean.png";
  static const String coffeeBgImg = "assets/img/coffee_bg.jpg";
  static const String sugarCubeImg = "assets/img/sugar_cube.png";
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  final minCoffeeStrengthAllowance = 1;
  final minSugarAllowance = 0;
  final maxCoffeeStrengthAllowance = 5;
  final maxSugarAllowance = 5;
  final String noSugarSelected = "No sugar selected.";

  int coffeeStrength = 1;
  int preferredAmountOfSugar = 1;

  void increaseCoffeeStrength() {
    setState(() {
      coffeeStrength =
          coffeeStrength < maxCoffeeStrengthAllowance
              ? ++coffeeStrength
              : minCoffeeStrengthAllowance;
    });
  }

  void increaseSugarStrength() {
    setState(() {
      preferredAmountOfSugar =
          preferredAmountOfSugar < maxSugarAllowance
              ? ++preferredAmountOfSugar
              : minSugarAllowance;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Row(
          children: [
            const MyStyledBodyText("Strength: "),
            SizedBox(width: 2),

            ...generateListOfImages(coffeeStrength, Assets.coffeeBeanImg),

            Expanded(child: SizedBox(width: 50)),
            MyStyledButton(onPressed: increaseCoffeeStrength, 
              child: Text("+")),
            
          ],
        ),
        Row(
          children: [
            const MyStyledBodyText("Sugars:  "),
            SizedBox(width: 8),

            if (preferredAmountOfSugar == 0)
              MyStyledBodyText(noSugarSelected)
            else
              ...generateListOfImages(preferredAmountOfSugar, Assets.sugarCubeImg),

            Expanded(child: SizedBox(width: 50)),
            
            MyStyledButton(onPressed: increaseSugarStrength,
              child: Text("+")),
          ],
        ),
      ],
    );
  }

  List<Widget> generateListOfImages(
    int numberOfElements,
    String fullLocalPathOfImageNameAndExtensions, {
    double width = 30.0,
  }) {
    List<Widget> resultingListOfImages = [];
    for (int i = 0; i < numberOfElements; i++) {
      resultingListOfImages.add(
        Image.asset(
          fullLocalPathOfImageNameAndExtensions,
          width: width,
          color: Colors.brown[100],
          colorBlendMode: BlendMode.multiply,
        ),
      );
    }
    return resultingListOfImages;
  }
}
