import 'package:flutter/material.dart';

class MyplayerController extends StatefulWidget {
  MyplayerController({super.key});

  @override
  State<MyplayerController> createState() => _MyplayerControllerState();
}

class _MyplayerControllerState extends State<MyplayerController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueGrey,),
    );
  }
}
