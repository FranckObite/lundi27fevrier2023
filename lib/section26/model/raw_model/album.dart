import 'package:jeudi23challenge/section26/model/raw_model/artist.dart';
import 'package:jeudi23challenge/section26/model/raw_model/song.dart';

class Album {
  String title;
  Artist artist;
  List<Song> songs;
  Album({required this.artist, required this.songs, required this.title});
}
