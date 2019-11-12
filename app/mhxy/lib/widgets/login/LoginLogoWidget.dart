import 'package:flutter/material.dart';

class LoginLogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Positioned(
      left: 0,
      top: MediaQuery.of(context).size.height / 6,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width / 5 * 2.1,
          child: Image.asset("assets/images/login_logo.png"),
        ),
      ),
    );
  }
}
