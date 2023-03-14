/* import 'package:flutter/material.dart';

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({super.key});

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
} */

import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              lebutton(lacouleur: Colors.red, lenombre: 1, laWidth: size.width),
              //Spacer(),
              lebutton(
                  lacouleur: Colors.orange, lenombre: 2, laWidth: size.width),
              //Spacer(),
              lebutton(
                  lacouleur: Colors.yellow, lenombre: 3, laWidth: size.width),
              //Spacer(),
              lebutton(
                  lacouleur: Colors.green, lenombre: 4, laWidth: size.width),
              //Spacer(),
              lebutton(
                  lacouleur: Colors.teal, lenombre: 5, laWidth: size.width),
              //Spacer(),
              lebutton(
                lacouleur: Colors.blue,
                lenombre: 6,
                laWidth: size.width,
              ),
              //Spacer(),
              lebutton(
                  lacouleur: Colors.purple, lenombre: 7, laWidth: size.width)
            ],
          ),
        )),
      ),
    );
  }

  TextButton lebutton(
      {required Color lacouleur,
      required int lenombre,
      required double laWidth}) {
    return TextButton(
        onPressed: () {
          final player = AudioPlayer();
          player.play(AssetSource('note$lenombre.wav'));
          /* final player = AudioCache();
          player.play('assets/note$lenombre.wav'); */
        },
        child: Container(
          width: laWidth,
          height: 100,
          decoration: BoxDecoration(color: lacouleur),
        ));
  }
}
