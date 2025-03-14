import 'package:coffee_card/coffee_prefs.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:coffee_card/styled_body_text.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // EasyLocalization.of(context)!.setLocale(Locale('bg', '')); // Set to Bulgarian locale
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: MyStyledBodyText(Assets.appBarTitle.tr(), color: Colors.white70),
        backgroundColor: Colors.brown[700],

        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
                icon: Image.asset(
                  Assets.flagBgImg,
                  width: 35,
                  height: 35,
                ),
                onPressed: () => {
                  if (context.locale != Locale('bg')) {
                    EasyLocalization.of(context)!.setLocale(Locale('bg')),
                  }
                }
            ),
          ],
        ),
        actions: [
          IconButton(
              icon: Image.asset(
                Assets.flagUkImg,
                width: 35,
                height: 35,
              ),
              onPressed: () =>{
                if (context.locale != Locale('en')) {
                  EasyLocalization.of(context)!.setLocale(Locale('en')),
                }
              }
          )
        ],


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
            child: CoffeePrefs(),
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
