import 'package:flutter/material.dart';

class MonTextAvecStyle extends Text {
  MonTextAvecStyle(
      {required String data,
      Color color = Colors.black,
      double size = 18,
      weight = FontWeight.normal,
      style = FontStyle.normal})
      : super(data,
            style: TextStyle(
                color: color,
                fontSize: size,
                fontWeight: weight,
                fontStyle: style));
}
