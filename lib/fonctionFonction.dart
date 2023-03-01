import 'package:flutter/material.dart';

class Myfonction extends StatefulWidget {
  @override
  State<Myfonction> createState() => _MyfonctionState();
}

class _MyfonctionState extends State<Myfonction> {
  String resultat = '';

  final valeurTextFieldcontroller = TextEditingController();

  recupererDonneesTextFields() {
    setState(() {
      resultat = valeurTextFieldcontroller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: 400,
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: valeurTextFieldcontroller,
                decoration:
                    const InputDecoration(hintText: ' Entrer un chiffre'),
              )),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(35)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 23, 58, 255),
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontStyle: FontStyle.normal),
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                ),
                onPressed: recupererDonneesTextFields,
                child: const Text('Cliquez ici '),
              ),
              SizedBox(
                width: 30.0,
              ),
              Container(
                  width: 300,
                  height: 50,
                  color: Colors.white,
                  child: ListTile(
                    title: Text("$resultat ",
                        style: const TextStyle(fontSize: 20)),
                    leading: Text("$resultat ",
                        style: const TextStyle(fontSize: 20)),
                    trailing: Text("$resultat ",
                        style: const TextStyle(fontSize: 20)),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
