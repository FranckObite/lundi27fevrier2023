import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeudi23challenge/section12Anglais/calculator_brain.dart';
import 'package:jeudi23challenge/section12Anglais/resultPage.dart';
import 'package:jeudi23challenge/section12Anglais/round_Icon_button.dart';
import 'package:jeudi23challenge/section12Anglais/screen0.dart';

import 'Constants.dart';
import 'ReusableCard.dart';
import 'button_button.dart';
import 'icon_Content.dart';
import 'dart:math';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int heigth = 180;
  int weight = 60;
  int age = 25;
  int bmi = 0;

  /* Color MaleCardColous = inactiveCardColour;
  Color FemaleCardColous = inactiveCardColour; */

  /* void upDateColour(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (MaleCardColous == inactiveCardColour) {
        MaleCardColous = activeCardColour;
      } else {
        MaleCardColous = inactiveCardColour;
      }
    }
    if (selectedGender == Gender.female) {
      if (FemaleCardColous == inactiveCardColour) {
        FemaleCardColous = activeCardColour;
      } else {
        FemaleCardColous = inactiveCardColour;
      }
    }
  } */

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          accentColor: Colors.purple,
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          appBarTheme: AppBarTheme(
            color: KActiveCardColour,
          ),
          textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white))),
      home: Scaffold(
          appBar: AppBar(
            /* backgroundColor: Color(0xFF0A0E21) */
            title: Text('BMI CALCULATOR'),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      Couleur: selectedGender == Gender.male
                          ? KActiveCardColour
                          : KInactiveCardColour,
                      cardChild: CardChild(
                        leText: 'MALE',
                        licone: FontAwesomeIcons.mars,
                      ),
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                    ),
                  ),
                  Expanded(
                      child: ReusableCard(
                    Couleur: selectedGender == Gender.female
                        ? KActiveCardColour
                        : KInactiveCardColour,
                    cardChild: CardChild(
                        leText: "FEMALE", licone: FontAwesomeIcons.venus),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                  )),
                ],
              )),
              Expanded(
                  child: ReusableCard(
                Couleur: KActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("HEIGTH", style: KLabelStyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(heigth.toString(), style: KlabelTextStyle),
                        Text(
                          'cm',
                          style: KLabelStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color(0x29EB1555),
                          activeTrackColor: Colors.white,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0)),
                      child: Slider(
                          value: heigth.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          //activeColor: KBottomContainerColour,
                          inactiveColor: Color.fromARGB(255, 122, 121, 121),
                          onChanged: (double newValue) {
                            setState(() {
                              heigth = newValue.round();
                            });
                          }),
                    )
                  ],
                ),
                onPress: () {},
              )),
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      Couleur: KActiveCardColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("WEIGTH", style: KLabelStyle),
                          Text(
                            "$weight",
                            style: KlabelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      if (weight < 1) {
                                        weight = 0;
                                      } else {
                                        weight--;
                                      }
                                    });
                                  }),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icon: FontAwesomeIcons.plus,
                              )
                            ],
                          )
                        ],
                      ),
                      onPress: () {},
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      Couleur: KActiveCardColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("AGE", style: KLabelStyle),
                          Text(
                            "$age",
                            style: KlabelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      if (age < 1) {
                                        age = 0;
                                      } else {
                                        age--;
                                      }
                                    });
                                  }),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                icon: FontAwesomeIcons.plus,
                              )
                            ],
                          )
                        ],
                      ),
                      onPress: () {},
                    ),
                  ),
                ],
              )),
              BottomButton(
                buttonTitle: 'CALCULATTE',
                onTap: () {
                  CalculatorBrain cal =
                      CalculatorBrain(height: heigth, weight: weight);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RzsultPage(
                                bmiResult: cal.calculateBMI(),
                                interpretation: cal.getInterpretation(),
                                resultText: cal.getResult(),
                              )));
                },
              )
            ],
          )),
    );
  }

  Container ourContainer({
    required IconData monIcone,
    required String leText,
  }) {
    return Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(color: Color.fromARGB(255, 10, 26, 33)),
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              monIcone,
              color: Colors.white,
              size: 200,
            ),
            Text(
              leText,
              style: TextStyle(color: Colors.white60),
            ),
          ],
        ),
      ),
    );
  }

  Container ourContainer2({required double sise, required double value}) {
    return Container(
      height: 140,
      width: sise,
      decoration: BoxDecoration(color: Color.fromARGB(255, 10, 26, 33)),
      child: Expanded(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'HEIGTH',
                style: TextStyle(color: Colors.white60),
              ),
              Text(
                '$value cm',
                style: TextStyle(color: Colors.white, fontSize: 50),
              ),
              Slider(
                  activeColor: Colors.pink,
                  inactiveColor: Colors.white70,
                  min: 0,
                  max: 200,
                  value: value,
                  onChanged: (newValue) {
                    value == newValue;
                  })
            ],
          ),
        ),
      ),
    );
  }

  Container ourContainer3({
    required IconData monIcone,
    required String leText,
    required double laValuer,
  }) {
    return Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(color: Color.fromARGB(255, 10, 26, 33)),
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              leText,
              style: TextStyle(color: Colors.white60),
            ),
            Text(
              "$laValuer",
              style: TextStyle(fontSize: 50, color: Colors.white),
            ),
            Row(
              children: [
                FloatingActionButton(
                  onPressed: () {},
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
