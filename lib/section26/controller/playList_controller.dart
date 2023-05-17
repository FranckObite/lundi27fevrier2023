import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeudi23challenge/section26/controller/player_controller.dart';
import 'package:jeudi23challenge/section26/model/enums/playList.dart';

import '../../Section23AG/controller/player_controller.dart';
import '../model/raw_model/song.dart';

class PlayListController extends StatelessWidget {
  PlayListController(
      {super.key,
      required this.playlist,
      required this.title,
      required this.type});
  final List<Song> playlist;
  final String title;
  final Playlist type;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueGrey,
        title: Text('$title'),
      ),
      body: SafeArea(
          child: Column(
        children: [
          topView(MediaQuery.of(context).size),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(playlist[index].title),
                      leading: Image.network(playlist[index].thumb),
                      trailing: Icon(Icons.arrow_right),
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => MyplayerController());
                        Navigator.push(context, route);
                      },
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: playlist.length))
        ],
      )),
    );
  }

  Widget topView(Size size) {
    switch (type) {
      case Playlist.album:
        return Container(
          child: Column(
            children: [
              Image.network(
                playlist.first.thumb,
                height: size.height / 4,
              ),
              Text(
                playlist.first.album,
                style: GoogleFonts.signika(fontSize: 25),
              ),
              Text(
                playlist.first.artist.name,
                style: GoogleFonts.signika(fontSize: 16, color: Colors.red),
              )
            ],
          ),
        );
      case Playlist.artist:
        return Container();
      case Playlist.genre:
        return Container();
      default:
        return Container();
    }
  }
}
