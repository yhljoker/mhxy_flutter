import 'package:flutter/material.dart';

import 'package:mhxy/common/animation/JKAni.dart';

class ImageBtnWidget extends StatefulWidget {
  Function onTap;
  Widget child;

  ImageBtnWidget({Key key, this.onTap, this.child}) : super(key: key);

  @override
  _ImageBtnWidgetState createState() => _ImageBtnWidgetState();
}

class _ImageBtnWidgetState extends State<ImageBtnWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _aniController;
  BaseAni _ani;

  buildAni() async {
    _aniController = new AnimationController(
        vsync: this, duration: Duration(milliseconds: 120));

    _ani = new ImageBtnAni(_aniController, Duration(milliseconds: 120));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    buildAni();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTapDown: (_) {
        _ani.forward();
      },
      onTapUp: (_) {
        _ani.reverse();
        if (widget.onTap != null) widget.onTap();
      },
      onTapCancel: () {
        print('onTapCancel');
      },
      child: AnimatedBuilder(
        builder: (context, child) {
          return Transform.scale(
            scale: _ani.sequenceAnimation["scale"].value,
            child: widget.child,
          );
        },
        animation: _aniController,
      ),
    );
  }
}
