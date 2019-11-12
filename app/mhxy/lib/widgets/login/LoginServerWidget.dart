import 'package:flutter/material.dart';
import 'package:mhxy/common/screenutil/screenUtil.dart';
import 'package:mhxy/routes/JKRouteBuilder.dart';

import '../icons.dart';

import '../ImageBtnWidget.dart';

class LoginServerWidget extends StatelessWidget {
  Function login;

  LoginServerWidget({Key key, this.login}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Positioned(
      left: 0,
      top: MediaQuery.of(context).size.height / 6 + JKScreenUtil.setWidth(150),
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: ImageBtnWidget(
          onTap: () {
            if (login != null) login();
//            JKRouteBuilder.pushTransparentPage(
//              context,
//              Center(
//                child: GestureDetector(
//                  onTap: () {
//                    print('back');
//                    Navigator.of(context).pop();
//                  },
//                  child: Container(
//                    padding: EdgeInsets.all(12.0),
//                    color: Colors.black,
//                    child: Text(
//                      'data3',
//                      style: TextStyle(color: Colors.white),
//                    ),
//                  ),
//                ),
//              ),
//            );
          },
          child: Container(
            child: Stack(
              children: <Widget>[
                JKIcons.chooseServeBG(),
                Positioned(
                  right: 8,
                  top: JKScreenUtil.setWidth(8.5),
                  child: JKIcons.chooseServer(),
                ),
                Positioned(
                  left: 8,
                  top: JKScreenUtil.setWidth(10),
                  child: Text(
                    '时空之隙',
                    style: TextStyle(
                        fontSize: JKScreenUtil.setSp(10), color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
