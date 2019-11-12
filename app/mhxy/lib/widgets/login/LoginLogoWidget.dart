import 'package:flutter/material.dart';

class LoginLogoWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Positioned(
      left: (MediaQuery.of(context).size.width - MediaQuery.of(context).size.width / 5 * 2.1) / 2,
      top: MediaQuery.of(context).size.height / 6,
      child: Container(
        width: MediaQuery.of(context).size.width / 5 * 2.1,
        child: Image.asset("assets/images/login_logo.png"),
      ),
    );
  }
}
