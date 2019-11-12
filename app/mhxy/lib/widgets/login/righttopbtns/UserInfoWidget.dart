import 'package:flutter/material.dart';

import '../../icons.dart';
import '../../ImageBtnWidget.dart';

class UserInfoWidget extends StatefulWidget {
  @override
  _UserInfoWidgetState createState() => _UserInfoWidgetState();
}

class _UserInfoWidgetState extends State<UserInfoWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ImageBtnWidget(
      onTap: () {
        print('打开用户中心');
      },
      child: JKIcons.userInfo(),
    );
  }
}
