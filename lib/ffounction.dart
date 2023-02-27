import 'package:flutter/material.dart';

class FonctionMio extends StatelessWidget {
  FonctionMio({super.key});

  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextFormField(
            controller: myController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: "Veuillez saisir un chiffres ",
            ),

            // controller: myController,
          ),
        ),
        Row(
          children: [
            TextButton(onPressed: () {}, child: Text("clic me")),
            SizedBox(width: 100),
            Container(
              height: 50,
              width: 300,
              color: Colors.white,
              child: Text(" fffff ${myController.text}"),
            ),
          ],
        )
      ],
    );
  }
}
