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

class XylophoneApp extends StatefulWidget {
  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Stack(children: [
            Octave(size: size.width),
            Padding(
              padding: EdgeInsets.only(top: 600),
              child: Octave(size: size.width),
            ),
            Padding(
              padding: EdgeInsets.only(top: 1200),
              child: Octave(size: size.width),
            )
          ]),
        )),
      ),
    );
  }

  Stack Octave({required double size}) {
    return Stack(
      children: [
        lebutton(lacouleur: Colors.red, lenombre: 1, laWidth: size),
        Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: lebutton(lacouleur: Colors.orange, lenombre: 2, laWidth: size),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 200.0),
          child: lebutton(lacouleur: Colors.yellow, lenombre: 3, laWidth: size),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 300.0),
          child: lebutton(lacouleur: Colors.green, lenombre: 4, laWidth: size),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 400.0),
          child: lebutton(lacouleur: Colors.teal, lenombre: 5, laWidth: size),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 500.0),
          child: lebutton(
            lacouleur: Colors.blue,
            lenombre: 6,
            laWidth: size,
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 500.0),
            child:
                lebutton(lacouleur: Colors.purple, lenombre: 7, laWidth: size)),
      ],
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

  TextButton lebutton1({required Color lacouleur, required double laWidth}) {
    return TextButton(
        onPressed: () {
          for (int i = 1; i <= 7; i++) {
            final player = AudioPlayer();
            player.play(AssetSource('note$i.wav'));
          }
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
