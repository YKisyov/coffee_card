import 'package:coffee_card/coffee_prefs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:coffee_card/styled_body_text.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    EasyLocalization.of(context)!.setLocale(Locale('bg', '')); // Set to Bulgarian locale
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: MyStyledBodyText(Assets.appBarTitle.tr(), color: Colors.white70),
        backgroundColor: Colors.brown[700],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.brown[200],
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
            child: MyStyledBodyText(Assets.cardQuestion.tr()),
          ),
          Container(
            color: Colors.brown[100],
            padding: const EdgeInsets.all(20),
            child: const CoffeePrefs(),
          ),
          Expanded(
            child: Image.asset(
              Assets.coffeeBgImg,
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomLeft,
            ),
          ),
        ],
      ),
    );
  }
}
