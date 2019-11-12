import 'package:flutter/material.dart';
import 'package:mhxy/widgets/icons.dart';

class LoginAgreementWidget extends StatefulWidget {
  Function onChange;

  LoginAgreementWidget({Key key, this.onChange}) : super(key: key);

  @override
  _LoginAgreementWidgetState createState() => _LoginAgreementWidgetState();
}

class _LoginAgreementWidgetState extends State<LoginAgreementWidget> {
  bool isAgree = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Positioned(
      left: 0,
      bottom: 40,
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              setState(() {
                isAgree = !isAgree;
              });
              if (widget.onChange != null) widget.onChange(isAgree);
            },
            child: Padding(
              padding: EdgeInsets.only(left: 10, right: 5),
              child: Stack(
                children: <Widget>[
                  JKIcons.agreementBG(),
                  isAgree
                      ? Positioned(
                          left: 3,
                          child: JKIcons.agreement(),
                        )
                      : Text(''),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isAgree = !isAgree;
              });
              if (widget.onChange != null) widget.onChange(isAgree);
            },
            child: Text(
              '我已经详细阅读并同意',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('打开协议');
            },
            child: Text(
              '网易游戏使用许可及服务协议',
              style: TextStyle(color: Color(0xFF53dfff), fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}
