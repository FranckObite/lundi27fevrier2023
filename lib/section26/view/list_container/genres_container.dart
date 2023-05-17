import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeudi23challenge/section26/model/services/music_handler.dart';

import '../../model/enums/genre.dart';
import '../cells/genres_cell.dart';

class GenresContainer extends StatelessWidget {
  GenresContainer({super.key});
  List<Genre> genres = MusicHandler().allGenres();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Genres Musicaux",
            style: GoogleFonts.signika(fontSize: 20),
          ),
          Container(
            height: 75,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: genres.length,
                itemBuilder: (context, index) {
                  return GenreCell(
                    genre: genres[index],
                  );
                }),
          )
        ],
      ),
    );
  }
}
