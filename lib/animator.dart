import 'package:flutter/material.dart';

abstract class Animator<T> {
  T from;
  T to;
  int duration;
  int delay;
  Curve curve;
}

class Serial extends Animator {
  Serial({
    this.duration = 0,

    /// 无效，用Delay组件替代
    this.delay = 0,
    this.serialList = const <Animator>[],
  });

  int duration;
  int delay;
  List<Animator> serialList;
}

class W extends Animator<double> {
  W({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });

  double from;
  double to;
  int duration;
  int delay;
  Curve curve;
}

class H extends Animator<double> {
  H({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });

  double from;
  double to;
  int duration;
  int delay;
  Curve curve;
}

class P extends Animator<EdgeInsets> {
  P({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });

  EdgeInsets from;
  EdgeInsets to;
  int duration;
  int delay;
  Curve curve;
}

class O extends Animator<double> {
  O({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });

  double from;
  double to;
  int duration;
  int delay;
  Curve curve;
}

class SX extends Animator<double> {
  SX({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });

  double from;
  double to;
  int duration;
  int delay;
  Curve curve;
}

class SY extends Animator<double> {
  SY({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });

  double from;
  double to;
  int duration;
  int delay;
  Curve curve;
}

class RX extends Animator<double> {
  RX({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });

  double from;
  double to;
  int duration;
  int delay;
  Curve curve;
}

class RY extends Animator<double> {
  RY({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });

  double from;
  double to;
  int duration;
  int delay;
  Curve curve;
}

class RZ extends Animator<double> {
  RZ({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });

  double from;
  double to;
  int duration;
  int delay;
  Curve curve;
}

class TX extends Animator<double> {
  TX({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });

  double from;
  double to;
  int duration;
  int delay;
  Curve curve;
}

class TY extends Animator<double> {
  TY({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });

  double from;
  double to;
  int duration;
  int delay;
  Curve curve;
}

class C extends Animator<Color> {
  C({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });

  Color from;
  Color to;
  int duration;
  int delay;
  Curve curve;
}

class B extends Animator<BorderRadius> {
  B({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });

  BorderRadius from;
  BorderRadius to;
  int duration;
  int delay;
  Curve curve;
}

class Delay extends Animator {
  Delay({
    this.duration = 0,

    /// 无效
    this.delay = 0,
  });

  int duration;
  int delay;
}
