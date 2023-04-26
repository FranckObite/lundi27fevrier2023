import 'package:jeudi23challenge/section26/model/raw_model/artist.dart';
import 'package:jeudi23challenge/section26/model/services/musique_datas.dart';

import '../raw_model/album.dart';

class MusicHandler {
  final datass = MusicDatas();
  List<Artist> allArtist() {
    List<Artist> artists = [];
    final all = datass.allDatas();
    for (var song in all) {
      if (!artists.contains(song.artist)) {
        artists.add(song.artist);
      }
    }
    return artists;
  }

  List<Album> allBums() {
    List<Album> albums = [];
    final all = datass.allDatas();
    for (var song in all) {
      final singer = song.artist.name;
      final albumTitle = song.album;
      Album newAlbum = albums.firstWhere(
          (album) => (album.artist.name == singer && album.title == albumTitle),
          orElse: () => Album(
                artist: song.artist,
                songs: [song],
                title: song.album,
              ));
      if (!newAlbum.songs.contains(song)) {
        newAlbum.songs.add(song);
      }
      if (!albums.contains(newAlbum)) {
        albums.add(newAlbum);
      }
    }
    return albums;
  }
}
