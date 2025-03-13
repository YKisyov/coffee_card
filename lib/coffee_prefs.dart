import 'package:coffee_card/styled_body_text.dart';
import 'package:coffee_card/styled_button.dart';
import 'package:easy_localization/easy_localization.dart';
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
  static const String milkImg = "assets/img/milk_splash.png";

  /*
     I will use those as one-stop shop for keeping up in track all the Strings
     used in the app.
     On top of this I will use the i18n internationalization schema to fetch
     pre-translated language pairs from .json files in the assets/lang/ folder.
  */
  static const String appBarTitle = "app_bar_title";
  static const String cardQuestion = "card_question";
  static const String strength = "strength";
  static const String sugars = "sugars";
  static const String milk = "milk";
  static const String noSugarSelected = "no_sugar_selected";
  static const String noMilkSelected = "no_milk_selected";
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  final int minCoffeeStrengthAllowance = 1;
  final int minSugarAllowance = 0;
  final int maxCoffeeStrengthAllowance = 5;
  final int maxSugarAllowance = 5;
  static const bool initialMilkSelection = false;
  final String noSugarSelected = "No sugar selected.";
  final String noMilkSelected = "No Milk selected.";

  int coffeeStrength = 1;
  int preferredAmountOfSugar = 1;
  bool wasMilkPreferred = initialMilkSelection;
  int countMilkButtonClicks = 0;

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

  void changeMilkPreference(){
    setState(() {
      wasMilkPreferred = !wasMilkPreferred;
      countMilkButtonClicks++;
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
        Row(
          children: [

            const MyStyledBodyText("Milk:  "),
            SizedBox(width: 8),

            if (!wasMilkPreferred)
              MyStyledBodyText(noMilkSelected)
            else
              Image.asset(Assets.milkImg,
              height: 47,
              width: 170,),

            Expanded(child: SizedBox(width: 50)),

            MyStyledButton(onPressed: changeMilkPreference,
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
