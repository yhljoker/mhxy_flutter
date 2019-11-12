import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'righttopbtns/UserInfoWidget.dart';
import 'righttopbtns/ProblemWidget.dart';
import 'righttopbtns/QRCodeWidget.dart';

class LoginRightTopBtnsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Positioned(
      right: 10,
      top: 10,
      child: Container(
        child: Column(
          children: <Widget>[
            UserInfoWidget(),
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: ProblemWidget(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: QRCodeWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
