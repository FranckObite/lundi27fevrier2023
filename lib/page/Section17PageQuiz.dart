import 'package:flutter/material.dart';

import 'lesQuestionDuQuiz.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
          title: Text('Challende Section 17'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("images/quiz2.png"),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (BuildContext ctx) {
                        return LesQuestionDuQuiz();
                      }));
                    },
                    child: Text('Commercer le Quiz!',
                        style:
                            TextStyle(fontSize: 30, color: Colors.deepOrange)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
