import 'package:flutter/material.dart';
import 'package:jeudi23challenge/chalengesection25/home3.dart';
import 'package:jeudi23challenge/chalengesection25/home4.dart';
import 'package:jeudi23challenge/chalengesection25/home5.dart';

import 'hom1.dart';
import 'home2.dart';

class Challenge25 extends StatelessWidget {
  const Challenge25({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Section25Challenge(),
    );
  }
}

class Section25Challenge extends StatefulWidget {
  const Section25Challenge({super.key});

  @override
  State<Section25Challenge> createState() => _Section25ChallengeState();
}

class _Section25ChallengeState extends State<Section25Challenge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Challenge du jour'),
        backgroundColor: Colors.purple,
        actions: [
          IconButton(
              onPressed: () {
                onPressed(laPage: Home1());
              },
              icon: Icon(
                Icons.person,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                onPressed(laPage: Home2());
              },
              icon: Icon(
                Icons.person_2,
                color: Colors.red,
              )),
          IconButton(
              onPressed: () {
                onPressed(laPage: Home3());
              },
              icon: Icon(
                Icons.person,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {
                onPressed(laPage: Home4());
              },
              icon: Icon(
                Icons.person,
                color: Colors.amber,
              )),
          IconButton(
              onPressed: () {
                onPressed(laPage: Home5());
              },
              icon: Icon(
                Icons.person,
                color: Colors.teal,
              ))
        ],
      ),
    );
  }

  void onPressed({required Widget laPage}) {
    MaterialPageRoute route = MaterialPageRoute(builder: ((context) => laPage));
    Navigator.push(context, route);
  }
}
