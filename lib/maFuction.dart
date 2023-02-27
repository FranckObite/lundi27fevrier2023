import 'dart:io';

import 'package:flutter/material.dart';

class FonctionMioo extends StatefulWidget {
  const FonctionMioo({super.key});

  @override
  State<FonctionMioo> createState() => _FonctionMiooState();
}

class _FonctionMiooState extends State<FonctionMioo> {
  final valeurTextFieldcontroller = TextEditingController();

  String resultat = '';

  recupererDonneesTextFields() {
    setState(() {
      resultat = valeurTextFieldcontroller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(padding: EdgeInsets.all(10.0)),
          TextField(
            autocorrect: true,
            decoration:
                const InputDecoration(hintText: 'Ecrivez un nombre ici svp!'),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Container(
                height: 80,
                width: 300,
                color: Color.fromARGB(255, 236, 229, 229),
                child: Text(resultat),
              ),
              SizedBox(width: 20),
              TextButton(
                  onPressed: recupererDonneesTextFields,
                  child: Text('afficher')),
            ],
          )
        ],
      ),
    );
    ;
  }
}
