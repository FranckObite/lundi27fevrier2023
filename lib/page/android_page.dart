import 'package:flutter/material.dart';

class AndroidPage extends StatefulWidget {
  const AndroidPage({super.key});

  @override
  State<AndroidPage> createState() => _AndroidPageState();
}

class _AndroidPageState extends State<AndroidPage> {
  bool loveFlutter = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Notre Design sous Android'),
        ),
        body: Column(children: [
          ElevatedButton(
              onPressed: () {
                loveFlutter = !loveFlutter;
              },
              child: Text((loveFlutter) ? "I love flutter" : "PhP my fovorite"))
        ]),
      ),
    );
  }
}
