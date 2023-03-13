import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
  var rigthDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee Challenge'),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                    onPressed: fonction,
                    child: Image.asset(
                        'images/dice$leftDiceNumber.png') /* Image(
                    image: AssetImage("images/dice1.png"),
                  ), */
                    ),
              )),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                    onPressed: fonction,
                    child: Image.asset(
                        'images/dice$rigthDiceNumber.png') /* Image(
                    image: AssetImage("images/dice1.png"),
                  ), */
                    ),
              ))
            ],
          ),
        ),
      ),
    );
  }

  void fonction() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rigthDiceNumber = Random().nextInt(6) + 1;
    });
  }
}
