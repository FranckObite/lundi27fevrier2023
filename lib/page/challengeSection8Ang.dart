import 'package:flutter/material.dart';

import 'dart:math';

class ChallengeSection8Ang extends StatefulWidget {
  const ChallengeSection8Ang({super.key});

  @override
  State<ChallengeSection8Ang> createState() => _ChallengeSection8AngState();
}

class _ChallengeSection8AngState extends State<ChallengeSection8Ang> {
  var limageEnQuestion = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Text("Ask Me Anything"),
          backgroundColor: Color.fromARGB(255, 33, 93, 243),
        ),
        body: Center(
          child: TextButton(
              onPressed: laFonction,
              child: Image.asset("images/ball$limageEnQuestion.png")),
        ),
      ),
    );
  }

  void laFonction() {
    setState(() {
      limageEnQuestion = Random().nextInt(5) + 1;
    });
  }
}
