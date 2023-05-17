import 'package:flutter/material.dart';
import 'package:jeudi23challenge/section26/controller/playList_controller.dart';
import 'package:jeudi23challenge/section26/model/enums/playList.dart';
import 'package:jeudi23challenge/section26/model/raw_model/album.dart';

class AlbumViewCell extends StatelessWidget {
  AlbumViewCell({super.key, required this.album});

  final Album album;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (contex) => PlayListController(
                    playlist: album.songs,
                    title: album.title,
                    type: Playlist.album)));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(album.songs[0].thumb, fit: BoxFit.cover),
      ),
    );
  }
}
