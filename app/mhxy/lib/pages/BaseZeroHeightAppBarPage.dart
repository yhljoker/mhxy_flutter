import 'package:flutter/material.dart';

class BaseZeroHeightAppBarPage extends StatefulWidget {
  Widget child;

  BaseZeroHeightAppBarPage({Key key, this.child}) : super(key: key);

  @override
  _BaseZeroHeightAppBarPageState createState() =>
      _BaseZeroHeightAppBarPageState();
}

class _BaseZeroHeightAppBarPageState extends State<BaseZeroHeightAppBarPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          width: double.infinity,
          height: 0,
        ),
        preferredSize: Size(double.infinity, 0),
      ),
      body: widget.child,
    );
  }
}
