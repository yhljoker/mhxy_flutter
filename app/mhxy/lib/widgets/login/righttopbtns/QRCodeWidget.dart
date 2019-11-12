import 'package:flutter/material.dart';

import '../../icons.dart';
import '../../ImageBtnWidget.dart';

class QRCodeWidget extends StatefulWidget {
  @override
  _QRCodeWidgetState createState() => _QRCodeWidgetState();
}

class _QRCodeWidgetState extends State<QRCodeWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ImageBtnWidget(
      onTap: () {
        print('打开二维码扫描');
      },
      child: JKIcons.qrCode(),
    );
  }
}
