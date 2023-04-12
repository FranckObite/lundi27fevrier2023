import 'package:flutter/material.dart';
import 'package:jeudi23challenge/section12Anglais/ReusableCard.dart';

import 'Constants.dart';

class CalculonsLeBMI extends StatefulWidget {
  const CalculonsLeBMI({super.key});

  @override
  State<CalculonsLeBMI> createState() => _CalculonsLeBMIState();
}

class _CalculonsLeBMIState extends State<CalculonsLeBMI> {
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
            /* backgroundColor: Color(0xFF0A0E21) */
            title: Text(
              'Your Result',
              style: KlabelTextStyle,
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    /* crossAxisAlignment: CrossAxisAlignment.stretch, */
                    children: [
                      Spacer(),
                      Text(
                        "NORMAL",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        "193",
                        style: KlabelTextStyle,
                      ),
                      Spacer(),
                      Text(
                        "You have a NORMAL body weigth \n Good Job!",
                        style: KLabelStyle,
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
              Container(
                color: KBottomContainerColour,
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                height: kBottomContainerHeight,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CalculonsLeBMI()));
                    },
                    child: Text("RE-CALCULATE", style: KlabelTextStyle)),
              )
            ],
          )),
    );
  }
}
