import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class JKScreenUtil {
  static init(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
  }

  static setWidth(double width) {
    return ScreenUtil.getInstance().setWidth(width);
  }

  static setHeight(double height) {
    return ScreenUtil.getInstance().setHeight(height);
  }

  static setSp(double sp) {
    return ScreenUtil.getInstance().setSp(sp);
  }
}
