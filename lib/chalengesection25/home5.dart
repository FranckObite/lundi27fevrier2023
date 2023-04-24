import 'package:flutter/material.dart';

import 'hom1.dart';

class Home5 extends StatefulWidget {
  const Home5({super.key});

  @override
  State<Home5> createState() => _Home5State();
}

class _Home5State extends State<Home5> {
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
                lenom: '......................',
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
