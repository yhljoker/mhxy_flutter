import 'package:flutter/material.dart';
import 'package:mhxy/common/screenutil/screenUtil.dart';

class JKIcons {
  static const iconPath = "assets/images/global/xb1.png";
  static const iconPath2 = "assets/images/global/xb2.png";

  static Widget baseImage(
      {double width = 0.0,
      double height = 0,
      double left = 0,
      double top = 0,
      double scale = 0.660212,
      String path = iconPath}) {
    scale = JKScreenUtil.setWidth(scale);
    return Container(
      width: width * scale,
      height: height * scale,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: -(width - width * scale) / 2,
            top: -(height - height * scale) / 2,
            child: Transform.scale(
              scale: scale,
              child: Container(
                width: width,
                height: height,
                child: Stack(
                  overflow: Overflow.clip,
                  fit: StackFit.loose,
                  children: <Widget>[
                    Positioned(
                      left: left,
                      top: top,
                      child: Image.asset(
                        path,
                        fit: BoxFit.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// 登录页-点击选服
  static Widget chooseServer() {
    return baseImage(left: -1267, top: -379, width: 100, height: 25);
  }

  /// 登录页-右上角 账号按钮
  static Widget userInfo() {
    return baseImage(left: -706, top: -1530, width: 65, height: 65);
  }

  /// 登录页-右上角 常见问题按钮
  static Widget problem() {
    return baseImage(left: -714, top: -1666, width: 65, height: 65);
  }

  /// 登录页-右上角 二维码
  static Widget qrCode() {
    return baseImage(left: -715, top: -1600, width: 65, height: 65);
  }

  /// 登录页-服务器选择背景
  static Widget chooseServeBG() {
    return baseImage(
        left: -782, top: -1218, width: 195, height: 55, path: iconPath2);
  }
}
