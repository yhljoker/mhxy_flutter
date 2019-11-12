import 'package:flutter/material.dart';
import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';


class BaseAni {
  AnimationController controller;
  SequenceAnimation sequenceAnimation;

  init(AnimationController con) {
    this.controller = con;
  }


  forward() async {
    try {
      await controller
          .forward()
          .orCancel;
    } on TickerCanceled {
      // the animation got canceled, probably because we were disposed
    }
  }

  reverse() async {
    try {
      await controller
          .reverse()
          .orCancel;
    } on TickerCanceled {
      // the animation got canceled, probably because we were disposed
    }
  }

  dispose() {
    controller.dispose();
  }
}