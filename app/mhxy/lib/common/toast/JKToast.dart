import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class JKToast {
  static toast(context, String msg) {
    showToast(
      msg,
      context: context,
      animation: StyledToastAnimation.slideFromTop,
      reverseAnimation: StyledToastAnimation.slideToTop,
      position: StyledToastPosition.center,
      startOffset: Offset(0.0, 0.5),
      endOffset: Offset(0.0, -1.5),
      reverseEndOffset: Offset(0.0, 0.0),
      duration: Duration(milliseconds: 1200),
      //Animation duration   animDuration * 2 <= duration
      animDuration: Duration(milliseconds: 600),
      curve: Curves.fastOutSlowIn,
      reverseCurve: Curves.fastOutSlowIn,
      textPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      textStyle: TextStyle(fontSize: 10, color: Colors.white),
      shapeBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: BorderSide(width: 1.0, color: Colors.white)),
    );
  }
}
