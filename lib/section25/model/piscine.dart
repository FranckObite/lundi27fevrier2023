import 'package:flutter/material.dart';

class Piscine {
  String imageJardin;
  String imagePiscine;

  Piscine({required this.imageJardin, required this.imagePiscine});

  String getImage1() => 'images/$imagePiscine';

  String getImage2() => 'images/$imageJardin';
}
