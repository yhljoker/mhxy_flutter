import 'package:flutter/material.dart';

class JKRouteBuilder {
  static pushTransparentPage(BuildContext context, Widget widget) {
    Navigator.of(context).push(PageRouteBuilder(
        opaque: false,
        pageBuilder: (context, animation, secondaryAnimation) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            body: widget,
          );
        }));
  }
}
