import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeudi23challenge/section26/model/raw_model/album.dart';
import 'package:jeudi23challenge/section26/model/services/music_handler.dart';

import '../cells/album_view_cell.dart';

class AlbumsContainer extends StatelessWidget {
  AlbumsContainer({super.key});

  List<Album> albums = MusicHandler().allBums();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Albums",
            style: GoogleFonts.signika(fontSize: 20),
          ),
          Container(
            height: 300,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: albums.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisSpacing: 10,
                      crossAxisSpacing: 10
                      ),
                  itemBuilder: (context, index) {
                    return AlbumViewCell(
                      album: albums[index],
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
