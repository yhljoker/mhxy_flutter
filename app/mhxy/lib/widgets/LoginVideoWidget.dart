import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';

class LoginVideoWidget extends StatefulWidget {
  Function onEnd;

  LoginVideoWidget({
    Key key,
    this.onEnd,
  }) : super(key: key);

  @override
  _LoginVideoWidgetState createState() => _LoginVideoWidgetState();
}

class _LoginVideoWidgetState extends State<LoginVideoWidget> {
  VideoPlayerController controller;

  bool _isPlay = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initVideo();
  }

  initVideo() async {
    controller = new VideoPlayerController.asset("assets/video/opening.mp4");
    controller.addListener(() {
      if (controller.value.position.inMilliseconds > 0 &&
          !controller.value.isPlaying &&
          widget.onEnd != null) {
        widget.onEnd();
      }
    });
    await controller.initialize();
    controller.play();
    setState(() {
      _isPlay = true;
    });
  }

  _videoOnDoubleTap() {
    if (!_isPlay) return;
    if (controller != null) {
      controller.setVolume(0.0);
      controller.pause();
      controller.dispose();
      controller = null;
    }
    if (widget.onEnd != null) {
      widget.onEnd();
    }
    _isPlay = false;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _isPlay
        ? GestureDetector(
            onDoubleTap: _videoOnDoubleTap,
            child: VideoPlayer(controller),
          )
        : Text('');
  }
}
