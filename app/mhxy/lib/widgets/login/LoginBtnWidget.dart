import 'package:flutter/material.dart';
import 'package:mhxy/common/screenutil/screenUtil.dart';

import '../ImageBtnWidget.dart';

import '../compoments/BtnWidget.dart';

class LoginBtnWidget extends StatefulWidget {
  bool agreement;

  LoginBtnWidget({Key key, this.agreement}) : super(key: key);

  @override
  _LoginBtnWidgetState createState() => _LoginBtnWidgetState();
}

class _LoginBtnWidgetState extends State<LoginBtnWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Positioned(
      left: 0,
      top: MediaQuery.of(context).size.height / 6 + JKScreenUtil.setWidth(200),
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: ImageBtnWidget(
          onTap: () {
            print('登录游戏 ${widget.agreement}');
          },
          child: BtnWidget(
            width: 236,
            height: 70,
            child: Text(
              '登录游戏',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: JKScreenUtil.setSp(18)),
            ),
          ),
        ),
      ),
    );
  }
}
