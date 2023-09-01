import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class events extends StatefulWidget {
  const events({Key? key}) : super(key: key);

  @override
  State<events> createState() => _eventsState();
}
class _eventsState extends State<events> {
  final videourl = "https://www.youtube.com/watch?v=fVW8-px4Ufw";
  late YoutubePlayerController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final videoid = YoutubePlayer.convertUrlToId(videourl);
    _controller = YoutubePlayerController(initialVideoId: videoid!,flags: YoutubePlayerFlags(autoPlay: false));
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: YoutubePlayer(
                controller: _controller,showVideoProgressIndicator: true,
                width: 300,
                aspectRatio: 9/16,
              ),
            ),
            // Container(
            //   height: 300,
            //   width: MediaQuery.of(context).size.width,
            //   child: YoutubePlayer(
            //     controller: _controller,showVideoProgressIndicator: true,
            //     width: 300,
            //     aspectRatio: 9/16,
            //   ) ,
            // )
          ],
        ),
      ),
    );
  }
}
