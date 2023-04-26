import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:jeudi23challenge/section26/model/raw_model/artist.dart';

class ArtistCircleCell extends StatelessWidget {
  const ArtistCircleCell(
      {super.key, required this.artist, required this.heigth});
  final Artist artist;
  final double heigth;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          onTap();
        },
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: ClipOval(
            child: Image.network(
              artist.urlImage,
              width: heigth,
              height: heigth,
              fit: BoxFit.cover,
            ),
          ),
        ));
    ;
  }

  onTap() {}
}
