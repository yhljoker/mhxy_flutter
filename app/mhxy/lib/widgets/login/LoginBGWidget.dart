import 'package:flutter/material.dart';

class LoginBGWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image.asset(
        "assets/images/login_bg.jpg",
        fit: BoxFit.cover,
      ),
    );
  }
}
