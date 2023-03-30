import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({
    required this.Couleur,
    super.key,
    required this.cardChild,
    required this.onPress,
  });
  final Color Couleur;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
            color: Couleur, borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.all(15),
        /* height: 200,
        width: 170, */
      ),
    );
  }
}
