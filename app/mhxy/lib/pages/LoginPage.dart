import 'package:flutter/material.dart';

import 'BaseZeroHeightAppBarPage.dart';

import '../common/audio/AudioManager.dart';

import '../widgets/LoginVideoWidget.dart';
import '../widgets/LoginWidget.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isPlayVideo = false;

  _videoOnEnd() {
    setState(() {
      _isPlayVideo = false;
    });
    AudioManager.playLoginBG();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BaseZeroHeightAppBarPage(
      child: _isPlayVideo
          ? LoginVideoWidget(
              onEnd: _videoOnEnd,
            )
          : LoginWidget(),
    );
  }
}
