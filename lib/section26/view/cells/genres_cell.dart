import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeudi23challenge/section26/model/enums/genre.dart';

class GenreCell extends StatelessWidget {
  GenreCell({super.key, required this.genre});
  final Genre genre;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color.fromRGBO(Random().nextInt(256),
                  Random().nextInt(256), Random().nextInt(256), 2)),
          width: MediaQuery.of(context).size.width * 0.45,
          child: Center(
            child: Text(
              genre.name,
              style: GoogleFonts.signika(
                fontSize: 20,
                color: Colors.blueGrey,
              ),
            ),
          ),
        ));
  }
}
