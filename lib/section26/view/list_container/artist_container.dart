import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeudi23challenge/section26/model/raw_model/artist.dart';
import 'package:jeudi23challenge/section26/model/services/music_handler.dart';
import 'package:jeudi23challenge/section26/view/cells/artist_circle_cell.dart';

class ArtistContainer extends StatelessWidget {
  ArtistContainer({super.key});
  final List<Artist> artists = MusicHandler().allArtist();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "Artistes",
            style: GoogleFonts.signika(fontSize: 20),
          ),
          Container(
            height: 90,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: artists.length,
                itemBuilder: ((context, index) =>
                    ArtistCircleCell(artist: artists[index], heigth: 75))),
          )
        ],
      ),
    );
  }
}
