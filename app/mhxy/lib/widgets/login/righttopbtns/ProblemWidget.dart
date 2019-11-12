import 'package:flutter/material.dart';

import '../../icons.dart';
import '../../ImageBtnWidget.dart';

class ProblemWidget extends StatefulWidget {
  @override
  _ProblemWidgetState createState() => _ProblemWidgetState();
}

class _ProblemWidgetState extends State<ProblemWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ImageBtnWidget(
      onTap: () {
        print('打开常见问题');
      },
      child: JKIcons.problem(),
    );
  }
}
