import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';

import 'package:jeudi23challenge/main.dart';

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
    ["le Taj Mahal se trouve en Inde?", true],
    [
      "Flutter est utilisé pour développer des applications pour Android, iOS, Linux, Mac, Windows, Google Fuchsia et le web à partir d'une seule base de code.",
      true
    ],
    [
      " la Musique profane et le rap sont les deux types de musique qui ont coexités au Moyen Âge. ",
      false,
    ],
    [
      "Flutter est un kit de développement logiciel d'interface utilisateur open-source créé par Google.",
      true
    ],
    ["Le Safari de la vie est une oeuvre signée John P. Strecleky ?", true],
    ["Ode a la patrie est l'hymne Nationale de la CI?", false],
    [" NAN sigifie Non Aux Noix ?", false],
  ];

  var i = 0;
  var leScore = 0;

  var liconne = true;

  List<Icon> laListe = [];

  var lobservation = "Bonne reponse";
  var lobservation2 = "Mauvaise reponse";

  get unElement => maList[i][0];
  get uneReponse => maList[i][1];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
        Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Text(
            " Votre score est : $leScore",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
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
        ourExpanded(
          leBooleen: true,
          laCouleur: Colors.green,
        ),
        ourExpanded(
          leBooleen: false,
          laCouleur: Colors.red,
        ),
        Spacer(),

        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Row(children: laListe),
        )

        //TODO: Add a Row here as your score keeper
      ],
    );
  }

  Expanded ourExpanded({
    required bool leBooleen,
    required Color laCouleur,
  }) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: TextButton(
            child: Container(
              width: 400,
              height: 80,
              decoration: BoxDecoration(color: laCouleur),
              child: Center(
                child: Text(
                  '$leBooleen',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            onPressed: () {
              setState(() {
                if (leBooleen == uneReponse) {
                  final player = AudioPlayer();
                  player.play(AssetSource('note8.wav'));
                  leScore++;
                  laListe.add(Icon(
                    Icons.check,
                    color: Colors.green,
                  ));
                } else {
                  laListe.add(Icon(
                    Icons.clear,
                    color: Colors.red,
                  ));
                  final player1 = AudioPlayer();
                  player1.play(AssetSource('note9.wav'));
                }
                laQuestionSuivante();
              });
            }

            //The user picked false.

            ),
      ),
    );
  }

  Future<void> leDialog() async {
    return await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Resultat"),
            content: Text(
              "Votre score final est de : $leScore points.",
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: ((context) => Quizzler())));
                  },
                  child: Text(
                    "Reprendre le Quiz",
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: ((context) => MyApp())));
                  },
                  child: Text(
                    "Sortir du Quiz",
                  ))
            ],
          );
        });
  }

  void laQuestionSuivante() {
    if (i < maList.length - 1) {
      setState(() {
        i++;
      });
    } else {
      leDialog();
    }
  }
}
