import 'package:flutter/material.dart';
import 'package:jeudi23challenge/section12Anglais/ReusableCard.dart';
import 'package:jeudi23challenge/section12Anglais/button_button.dart';

import 'Constants.dart';
import 'bmi_Calculator.dart';

class RzsultPage extends StatelessWidget {
  RzsultPage(
      {super.key,
      required this.bmiResult,
      required this.resultText,
      required this.interpretation});
  final String bmiResult;

  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          accentColor: Colors.purple,
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          appBarTheme: AppBarTheme(
            color: KActiveCardColour,
          ),
          textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white))),
      home: Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR "),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: KTitleTextStyle,
              ),
            )),
            Expanded(
                flex: 5,
                child: ReusableCard(
                    Couleur: KActiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          resultText.toUpperCase(),
                          style: KResultTextStyle,
                        ),
                        Text(
                          bmiResult,
                          style: KBMITextStyle,
                        ),
                        Text(
                          interpretation,
                          textAlign: TextAlign.center,
                          style: KBodyTextStyl,
                        ),
                      ],
                    ),
                    onPress: () {})),
            BottomButton(
                onTap: () {
                  Navigator.pop(context);
                },
                buttonTitle: "RE-CALCULATE")
          ],
        ),
      ),
    );
  }
}
