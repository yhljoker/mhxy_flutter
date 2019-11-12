import 'package:flutter/material.dart';
import 'package:mhxy/common/toast/JKToast.dart';
import 'package:mhxy/common/toast/toastMsg.dart';

import 'login/LoginBGWidget.dart';
import 'login/LoginLogoWidget.dart';
import 'login/LoginCopyrightWidget.dart';
import 'login/LoginRightTopBtnsWidget.dart';
import 'login/LoginServerWidget.dart';
import 'login/LoginAgreementWidget.dart';
import 'login/LoginVersionWidget.dart';
import 'login/LoginBtnWidget.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  bool agreement = false;

  agreementOnChange(agree) {
    agreement = agree;
  }

  _onLogin() {
    if (!agreement) {
      JKToast.toast(context, ToastMsg.agreeAgreement);
      return;
    }
    print('_onLogin');
  }

  _onServerTap() {
    if (!agreement) {
      JKToast.toast(context, ToastMsg.agreeAgreement);
      return;
    }

    print('_onServerTap');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        LoginBGWidget(),
        LoginLogoWidget(),
        LoginRightTopBtnsWidget(),
        LoginServerWidget(login: _onServerTap),
        LoginVersionWidget(),
        LoginAgreementWidget(
          onChange: agreementOnChange,
        ),
        LoginCopyrightWidget(),
        LoginBtnWidget(
          login: _onLogin,
        ),
      ],
    );
  }
}
