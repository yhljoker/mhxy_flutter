import 'package:flutter/material.dart';
import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';

import './BaseAni.dart';

class FadeInOutAni extends BaseAni {
  AnimationController controller;
  SequenceAnimation sequenceAnimation;


  FadeInOutAni(AnimationController con,Size size,Duration to) {
    sequenceAnimation = new SequenceAnimationBuilder()
        .addAnimatable(
        animatable: new ColorTween(begin: Colors.black, end: Colors.black),
        from: const Duration(seconds: 0),
        to: to,
        tag: "color"
    ).addAnimatable(
        animatable: new Tween<double>(begin: size.width, end: size.width),
        from: const Duration(seconds: 0),
        to: to,
        tag: "width",
        curve: Curves.easeIn
    ).addAnimatable(
        animatable: new Tween<double>(begin: size.height, end: size.height),
        from: const Duration(seconds: 0),
        to: to,
        tag: "height",
        curve: Curves.ease
    ).addAnimatable(
        animatable: new Tween<double>(begin: 0.0, end: 1.0),
        from: const Duration(seconds: 0),
        to: to,
        tag: "opacity",
        curve: Curves.ease
    ).animate(con);
    this.controller = con;
    this.init(this.controller);
  }

  @override
  init(AnimationController con) {
    super.init(con);
  }

}