import 'package:flutter/material.dart';
import 'package:mhxy/common/screenutil/screenUtil.dart';
import 'package:mhxy/widgets/icons.dart';

class BtnWidget extends StatelessWidget {
  double width;
  double height;
  Widget child;

  BtnWidget({Key key, this.width, this.height, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        JKIcons.loginBtnBG(),
        Positioned(
          left: JKScreenUtil.setWidth(44),
          top: JKScreenUtil.setWidth(12),
          child: child,
        ),
      ],
    );
  }
}
