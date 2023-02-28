import 'package:flutter/material.dart';

class MonIcone extends StatelessWidget {
  const MonIcone(
      {super.key,
      required this.icon,
      required this.taille,
      required this.Couleurr});
  final IconData icon;
  final double taille;
  final Color Couleurr;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: taille,
      color: Couleurr,
    );
  }
}
