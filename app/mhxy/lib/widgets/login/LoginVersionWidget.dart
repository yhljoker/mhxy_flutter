import 'package:flutter/material.dart';

class LoginVersionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Positioned(
      right: 10,
      bottom: 28,
      child: Text(
        '版本号：1.251.1    引擎：1.245.0',
        style: TextStyle(fontSize: 10, color: Colors.white),
      ),
    );
  }
}
