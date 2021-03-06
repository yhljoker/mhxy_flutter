import 'package:flutter/material.dart';
import 'package:mhxy/common/screenutil/screenUtil.dart';

class JKIcons {
  static const iconPath = "assets/images/global/xb1.png";
  static const iconPath2 = "assets/images/global/xb2.png";
  static const iconPath4 = "assets/images/global/xb4.png";

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

  /// 登录页-左下角 协议背景
  static Widget agreementBG() {
    return baseImage(left: -1189, top: -1875, width: 39, height: 39);
  }

  /// 登录页-左下角 协议勾勾
  static Widget agreement() {
    return baseImage(left: -1265, top: -1670, width: 35, height: 35);
  }

  /// 登录页-服务器选择背景
  static Widget chooseServeBG() {
    return baseImage(
        left: -782, top: -1218, width: 195, height: 55, path: iconPath2);
  }

  /// 登录页-服务器选择背景
  static Widget loginBtnBG() {
    return baseImage(
        left: -1050, top: -591, width: 240, height: 80, path: iconPath2);
  }



  /// 登录页-用户协议背景
  static Widget agreeBG() {
    return baseImage(
        left: -1025, top: -200, width: 943, height: 80, path: iconPath4);
  }
}
