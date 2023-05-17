import 'package:flutter/material.dart';
import 'package:jeudi23challenge/section26/view/list_container/albums_container.dart';

import 'list_container/artist_container.dart';
import 'list_container/genres_container.dart';

class MusicView extends StatelessWidget {
  const MusicView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Divider(),
          //Container pour les artistes
          ArtistContainer(),
          const Divider(),
          //Container pour les albums
          AlbumsContainer(),
          const Divider(),
          //Container pour les genres de music
          GenresContainer(),
        ],
      ),
    );
  }
}
