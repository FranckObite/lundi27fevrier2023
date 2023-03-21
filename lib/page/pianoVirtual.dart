import 'package:flutter/material.dart';

import 'package:flutter_virtual_piano/flutter_virtual_piano.dart';

class MonPianoVirtuel extends StatefulWidget {
  const MonPianoVirtuel({Key? key}) : super(key: key);

  @override
  State<MonPianoVirtuel> createState() => _MonPianoVirtuelState();
}

class _MonPianoVirtuelState extends State<MonPianoVirtuel> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Virtual Piano"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SizedBox(
            height: 80,
            child: VirtualPiano(
              noteRange: const RangeValues(61, 78),
              // noteRange: const RangeValues(60, 90),
              highlightedNoteSets: const [
                // HighlightedNoteSet({44, 55, 77, 32}, Colors.green),
                // HighlightedNoteSet({34, 45, 67, 32}, Colors.blue)
              ],
              onNotePressed: (note, pos) {
                print("note pressed $note pressed at $pos");
              },
              onNoteReleased: (note) {
                print("note released $note");
              },
              onNotePressSlide: (note, pos) {
                print("note slide $note pressed at $pos");
              },
              elevation: 2,
              showKeyLabels: true,
            ),
          ),
        ),
      ),
    );
  }
}
