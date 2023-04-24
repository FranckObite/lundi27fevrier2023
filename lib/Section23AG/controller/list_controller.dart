import 'package:flutter/material.dart';
import 'package:jeudi23challenge/Section23AG/model/datas.dart';
import 'package:jeudi23challenge/Section23AG/vue/tile_view.dart';
import 'package:jeudi23challenge/data/UnFichierData.dart';

import '../model/video_view.dart';

class ListController extends StatelessWidget {
  ListController({super.key});
  List<Video> videos = Datass().parseVideos();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: videos.length,
          itemBuilder: (context, index) {
            return VideoTileView(video: videos[index]);
          }),
    );
  }
}
