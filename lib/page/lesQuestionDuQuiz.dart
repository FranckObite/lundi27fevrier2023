import 'package:flutter/material.dart';
import 'package:jeudi23challenge/data/UnFichierData.dart';
import 'package:jeudi23challenge/page/MonTextAvecStyl.dart';
import 'package:jeudi23challenge/page/Question.dart';

class LesQuestionDuQuiz extends StatefulWidget {
  const LesQuestionDuQuiz({super.key});

  @override
  State<LesQuestionDuQuiz> createState() => _LesQuestionDuQuizState();
}

class _LesQuestionDuQuizState extends State<LesQuestionDuQuiz> {
  List<Question> questions = Datas().listeQuestions;
  int index = 0;
  int score = 0;
  @override
  Widget build(BuildContext context) {
    final Question question = questions[index];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Score : $score"),
      ),
      body: Center(
        child: Card(
          margin: EdgeInsets.all(8),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MonTextAvecStyle(
                  data: 'Qusetion n° ${index + 1} / ${questions.length} ',
                  color: Colors.deepOrange,
                  style: FontStyle.italic,
                ),
                MonTextAvecStyle(
                  data: question.question,
                  size: 21,
                  weight: FontWeight.bold,
                ),
                Image.asset(question.getImage()),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Reponsebtn(false), Reponsebtn(true)],
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }

  ElevatedButton Reponsebtn(bool b) {
    return ElevatedButton(
      onPressed: () {
        laReponse(b);
      },
      child: Text((b) ? "Vrai" : "Faux"),
      style: ElevatedButton.styleFrom(
        primary: (b) ? Colors.green : Colors.red,
      ),
    );
  }

  laReponse(bool answer) {
    final question = questions[index];
    bool bonneReponse = (question.reponse == answer);
    if (bonneReponse) {
      setState(() {
        score++;
      });
    }

    montrerReponse(bonneReponse);
  }

  Future<void> montrerReponse(bool bonneReponse) async {
    final question = questions[index];
    String titile = (bonneReponse) ? "C'est Gagné" : "Raté!";
    String imageToShow = (bonneReponse) ? 'vrai.jpg' : "faux.jpg";
    String path = 'images/$imageToShow';
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext) {
          return SimpleDialog(
            title: MonTextAvecStyle(data: titile),
            children: [
              Image.asset(path),
              MonTextAvecStyle(data: question.explication),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    laQuestionSuivante();
                  },
                  child:
                      MonTextAvecStyle(data: "Passer à la question Suivante"))
            ],
          );
        });
  }

  Future<void> MontrerLeResultatFinal() async {
    return await showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
            title: MonTextAvecStyle(data: "C'est fini!"),
            content: MonTextAvecStyle(
              data: "Votre score est de : $score points.",
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();

                    Navigator.of(context).pop();
                  },
                  child: MonTextAvecStyle(
                    data: "OK",
                  ))
            ],
          );
        });
  }

  void laQuestionSuivante() {
    if (index < questions.length - 1) {
      setState(() {
        index++;
      });
    } else {
      MontrerLeResultatFinal();
    }
  }
}
