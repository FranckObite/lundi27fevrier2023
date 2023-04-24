import 'package:flutter/material.dart';
import 'package:jeudi23challenge/Section23AG/controller/player_controller.dart';

import '../model/video_view.dart';

class VideoTileView extends StatelessWidget {
  VideoTileView({super.key, required this.video});

  final Video video;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (()=> tapAction(context)),
      child: Card(
      margin: EdgeInsets.all(10),
      elevation: 7,
      child: Container(
        padding: EdgeInsets.only(top: 5, bottom: 5, left: 8, right: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(
              video.thumbString,
            ),
            Text(
              video.title,
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    ),
    );
  }

  tapAction(BuildContext context) {
    final route =
        MaterialPageRoute(builder: (contex) => PlayerController(video: video));
    Navigator.push(context, route);
  }
}
