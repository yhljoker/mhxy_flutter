import 'package:flutter/material.dart';

import '../pages/LoginPage.dart';

Map<String, WidgetBuilder> buildAppRoutes(BuildContext context) {
  return {
    "/": (context) {
      return LoginPage();
    },
  };
}
