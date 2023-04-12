import 'package:flutter/material.dart';

class Ville {
  String leNomdeLaVille;
  String lesDetails;

  String imagePath;

  Ville(
      {required this.leNomdeLaVille,
      required this.lesDetails,
      required this.imagePath});

  String getImage() => 'images/$imagePath';
}
