import 'package:flutter/material.dart';
import 'package:jeudi23challenge/Util/my_button.dart';

class DialogBox extends StatelessWidget {


  final controller;

  final contoller2;

  VoidCallback onSave;

  VoidCallback onCancel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onCancel,
      required this.onSave, required this.contoller2});

  @override
  Widget build(BuildContext context) {
    
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Container(
        height: 220,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ajouter une nouvelle chose à faire"),
            ),
            TextField(
              controller: contoller2,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ajouter une description"),
            ),

            //button save and quit
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //save button

                MyButton(text: "Enregistrer", onPressed: (onSave)),
                const SizedBox(width: 5),
                MyButton(text: "retour", onPressed: (onCancel)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
