import 'package:flutter/material.dart';
import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';

import './BaseAni.dart';

class ImageBtnAni extends BaseAni {
  AnimationController controller;
  SequenceAnimation sequenceAnimation;

  ImageBtnAni(AnimationController con, Duration to) {
    sequenceAnimation = new SequenceAnimationBuilder()
        .addAnimatable(
            animatable: new Tween<double>(begin: 1.0, end: 0.85),
            from: const Duration(seconds: 0),
            to: to,
            tag: "scale",
            curve: Curves.ease)
        .animate(con);
    this.controller = con;
    this.init(this.controller);
  }

  @override
  init(AnimationController con) {
    super.init(con);
  }
}
