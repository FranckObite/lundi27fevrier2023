import 'package:flutter/material.dart';

import 'hom1.dart';

class Home4 extends StatefulWidget {
  const Home4({super.key});

  @override
  State<Home4> createState() => _Home4State();
}

class _Home4State extends State<Home4> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.exit_to_app)),
            Text("Profil")
          ]),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height / 2,
            color: Colors.black,
            child: Card(
              elevation: 6,
              child: colunmm(
                lenom: 'INCONNU',
                matricul: '#NAN_6.23-1SDF72',
                num: '+225 074 746 831 1',
                speciality: 'Student Flutter',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
