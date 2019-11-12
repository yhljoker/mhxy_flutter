import 'package:flutter/material.dart';
import 'package:mhxy/common/screenutil/screenUtil.dart';
import 'package:mhxy/widgets/icons.dart';

class LoginAgreementDialogWidget extends StatefulWidget {
  @override
  _LoginAgreementDialogWidgetState createState() =>
      _LoginAgreementDialogWidgetState();
}

class _LoginAgreementDialogWidgetState
    extends State<LoginAgreementDialogWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Stack(
        children: <Widget>[
          Positioned(
            left: JKScreenUtil.setWidth(15),
            top: JKScreenUtil.setHeight(55),
            child: Stack(
              children: <Widget>[
                Container(
                  width: JKScreenUtil.setWidth(590),
                  height: MediaQuery.of(context).size.height / 10 * 8.8,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    color: Color(0xFFf7e3c6),
                    border:
                        new Border.all(color: Color(0xFF8c2b01), width: 0.5),
                  ),
                  child: Opacity(
                    opacity: 0.2,
                    child: Image.asset(
                      "assets/images/agree_bg.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Text('abcd'),
                ),
              ],
            ),
          ),
          Positioned(
            left: JKScreenUtil.setWidth(45),
            top: JKScreenUtil.setHeight(140),
            child: Container(
              width: JKScreenUtil.setWidth(530),
              height: MediaQuery.of(context).size.height / 10 * 6.6,
              color: Color(0xAAd8b582),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: JKIcons.agreeBG(),
          ),
          Positioned(
            left: 0,
            child: Container(
              width: 30,
              child: Image.asset("assets/images/agree_topright_dl.png"),
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              width: 30,
              child: Image.asset("assets/images/agree_topright_dl.png"),
            ),
          ),
        ],
      ),
    );
  }
}
