import 'package:flutter/material.dart';

class Ville {
  String leNomdeLaVille;
  String lesDetails;
  String plusdeDetaile;
  String imagePath;

  Ville(
      {required this.leNomdeLaVille,
      required this.lesDetails,
      required this.plusdeDetaile,
      required this.imagePath});

  String getImage() => 'images/$imagePath';
}
