import 'package:flutter/material.dart';
import 'dart:math';

class Quizzler extends StatefulWidget {
  @override
  State<Quizzler> createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List maList = [
    [
      "1+1=5 ?",
      false,
    ],
    ["2/2=1 ?", true],
    ["9-9=9?", false],
    [" NAN sigifie Non Aux Noix ?", true],
  ];
  var i = 0;
  bool vrai = true;
  var liconne = true;

  late List<String> laListe;

  get unElement => maList[i][0];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    laListe = [];
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                '$unElement',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              child: Container(
                width: 400,
                height: 80,
                decoration: BoxDecoration(color: Colors.green),
                child: Center(
                  child: Text(
                    '$vrai',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              onPressed: () {
                setState(() {
                  for (i; i < maList.length - 1; i++) {
                    i == i++;
                    if (vrai = maList[i][1]) {
                      laListe.add(liconne.toString());
                    } else {
                      laListe.add((!liconne).toString());
                    }
                  }

                  /* for (int j = 1; j < maList.length  ; j++) {
                    i = j;
                  } */
                  //i = Random().nextInt(maList.length);
                });
                //The user picked true.
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              child: Container(
                width: 400,
                height: 80,
                decoration: BoxDecoration(color: Colors.red),
                child: Center(
                  child: Text(
                    '${!vrai}',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              onPressed: () {
                //The user picked false.
              },
            ),
          ),
        ),
        Expanded(
            child: Container(
          child: Text("laListe.toString()"),
        ))

        //TODO: Add a Row here as your score keeper
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
