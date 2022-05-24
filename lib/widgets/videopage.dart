import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPage extends StatefulWidget {
  final String videoUrl;//='/videos/mainfood.mp4';
   VideoPage({Key? key,required this.videoUrl}) : super(key: key);

  @override
  _VideoPageState createState() => _VideoPageState();
}


class _VideoPageState extends State<VideoPage> {
   late VideoPlayerController _playerController;
  @override
  void initState() {
    super.initState();
    _playerController=VideoPlayerController.asset(widget.videoUrl,
        )
    ..initialize().then((_){setState(() {

    });});
    _playerController.play();
    _playerController.setLooping(true);

    setState(() {
      _playerController.value.isPlaying?
          _playerController.play():
          _playerController.play();
      _playerController.setLooping(true);
    });


  }
  @override
  void dispose() {
    _playerController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
        child: Container( decoration: (BoxDecoration(color: Colors.transparent)),
          child: VideoPlayer(_playerController),),
    ),
    );
  }
}
