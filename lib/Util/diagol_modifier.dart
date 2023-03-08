import 'package:flutter/material.dart';
import 'package:jeudi23challenge/Util/my_button.dart';

class DialogBoxModifier extends StatelessWidget {
  final controller2;

  final contoller22;

  VoidCallback onSave1;

  VoidCallback onCancel1;

  DialogBoxModifier(
      {super.key,
      required this.controller2,
      required this.onCancel1,
      required this.onSave1,
      required this.contoller22});

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
            /* TextField(
              controller: controller2,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "blabla"),
            ), */
            monTextfield(controller: controller2, hint: "modifier la la ToDo"),
            monTextfield(
              controller: contoller22,
              hint: "modifier la description",
            ),

            /* TextField(
              controller: contoller22,
              decoration:
                  InputDecoration(border: OutlineInputBorder(), hintText: ""),
            ), */

            //button save and quit
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //save button

                MyButton(text: "Enregistrer la modif", onPressed: (onSave1)),
                const SizedBox(width: 5),
                //MyButton(text: "retour", onPressed: (onCancel1)),
              ],
            )
          ],
        ),
      ),
    );
  }

  TextField monTextfield({
    required TextEditingController controller,
    required String hint,
  }) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(border: OutlineInputBorder(), hintText: hint),
    );
  }
}
