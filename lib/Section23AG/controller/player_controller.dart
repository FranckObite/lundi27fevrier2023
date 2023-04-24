import 'package:flutter/material.dart';
import 'package:jeudi23challenge/Section23AG/model/video_view.dart';
import 'package:video_player/video_player.dart';

import '../model/datas.dart';

class PlayerController extends StatefulWidget {
  PlayerController({super.key, required this.video});

  final Video video;

  @override
  State<PlayerController> createState() => _PlayerControllerState();
}

class _PlayerControllerState extends State<PlayerController> {
  late Video _video;
  late VideoPlayerController _videoPlayerController;
  late int index;

  bool canMountVideoPlayer() => _videoPlayerController.value.isInitialized;
  bool isPlaying() => _videoPlayerController.value.isPlaying;
  int getIndex() => Datass()
      .parseVideos()
      .indexWhere((vid) => _video.urlVideo == vid.urlVideo);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _video = widget.video;
    index = getIndex();
    configurePlayer();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    deletePlayer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(_video.title)),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              canMountVideoPlayer()
                  ? AspectRatio(
                      aspectRatio: _videoPlayerController.value.aspectRatio,
                      child: VideoPlayer(_videoPlayerController),
                    )
                  : Container(),
              Text(
                _video.title,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.secondary),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  elevation: 3,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: previous(),
                            icon: Icon(Icons.skip_previous)),
                        IconButton(
                            onPressed: playPause(),
                            icon: Icon(isPlaying()
                                ? Icons.pause_circle
                                : Icons.play_circle)),
                        IconButton(onPressed: next(), icon: Icon(Icons.skip_next))
                      ],
                    ),
                  ),
                ),
              ),
              VideoProgressIndicator(_videoPlayerController,
                  allowScrubbing: true),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(_videoPlayerController.value.duration.inSeconds
                          .toString() +
                      "s"),
                  Text(
                    _videoPlayerController.value.position.inSeconds.toString() +
                        " s",
                  )
                ],
              ),
              Container(
                height: 200,
                child: ListView.builder(
                    itemCount: Datass().parseVideos().length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final newVideo = Datass().parseVideos()[index];
                      return InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: ClipRRect(
                            child: Image.network(
                              newVideo.thumbString,
                              fit: BoxFit.cover,
                              width: 140,
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ));
  }

  configurePlayer() {
    _videoPlayerController = VideoPlayerController.network(_video.urlVideo);
    _videoPlayerController.initialize().then((isInit) => update);
    _videoPlayerController.setLooping(true);
    _videoPlayerController.addListener(() => update);
    _videoPlayerController.play();
  }

  deletePlayer() {
    _videoPlayerController.dispose();
  }

  update() {
    setState(() {});
  }

  playPause() {
    isPlaying()
        ? _videoPlayerController.pause()
        : _videoPlayerController.play();
  }

  next() {
    index = (index == Datass().parseVideos().length - 1) ? 0 : index + 1;
    _video = Datass().parseVideos()[index];
    configurePlayer();
  }

  previous() {
    index = (index == 0) ? Datass().parseVideos().length - 1 : index - 1;
    _video = Datass().parseVideos()[index];
    configurePlayer();
  }
}
