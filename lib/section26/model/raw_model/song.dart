import 'package:jeudi23challenge/section26/model/enums/genre.dart';

import 'artist.dart';
import 'package:jeudi23challenge/section26/model/enums/media_tupe.dart';

class Song {
  String title;
  int id;
  String album;
  String path;
  String thumb;
  Artist artist;
  Genre genre;
  MediaType mediaType;
  Song({
    required this.album,
    required this.artist,
    required this.genre,
    required this.id,
    required this.mediaType,
    required this.path,
    required this.thumb,
    required this.title,
  });
}
