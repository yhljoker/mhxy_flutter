import 'package:flutter/material.dart';

import 'login/LoginBGWidget.dart';
import 'login/LoginLogoWidget.dart';
import 'login/LoginCopyrightWidget.dart';
import 'login/LoginRightTopBtnsWidget.dart';
import 'login/LoginServerWidget.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        LoginBGWidget(),
        LoginLogoWidget(),
        LoginRightTopBtnsWidget(),
        LoginServerWidget(),
        LoginCopyrightWidget(),
      ],
    );
  }
}
