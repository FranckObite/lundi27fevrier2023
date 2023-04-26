import 'package:flutter/material.dart';
import 'package:jeudi23challenge/section25/model/piscine.dart';

import '../controller/mesJardins.dart';
import '../controller/mesPiscines.dart';
import '../controller/monDrawer.dart';
import '../model/listePiscine.dart';

class RealisationPage extends StatefulWidget {
  const RealisationPage({super.key});

  @override
  State<RealisationPage> createState() => _RealisationPageState();
}

List<Piscine> maListePiscine = MesPiscinesEtJardins().piscineJardin;

class _RealisationPageState extends State<RealisationPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: monDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Mon Jardin idéal"),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                "Nos réalisations",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Piscines"),
                ],
              ),
              mesPiscine(),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Jardins"),
                ],
              ),
              mesJardin()
            ],
          ),
        ),
      ),
    );
  }
}
