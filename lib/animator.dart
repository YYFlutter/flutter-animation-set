import 'package:flutter/material.dart';

export 'package:flutter_animation_set/animator.dart';

abstract class Animator<T> {
  T? from;
  T? to;
  late int duration;
  late int delay;
  Curve? curve;
}

class Serial extends Animator {

  int duration;
  int delay;
  List<Animator> serialList;

  Serial({
    this.duration = 0,
    /// 无效，用Delay组件替代
    this.delay = 0,
    this.serialList = const <Animator>[],
  });
}

class W extends Animator<double> {

  double? from;
  double? to;
  int duration;
  int delay;
  Curve? curve;

  W({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });
}

class H extends Animator<double> {

  double? from;
  double? to;
  int duration;
  int delay;
  Curve? curve;

  H({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });
}

class P extends Animator<EdgeInsets> {
  EdgeInsets? from;
  EdgeInsets? to;
  int duration;
  int delay;
  Curve? curve;

  P({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });
}

class O extends Animator<double> {

  double? from;
  double? to;
  int duration;
  int delay;
  Curve? curve;

  O({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });
}

class SX extends Animator<double> {

  double? from;
  double? to;
  int duration;
  int delay;
  Curve? curve;

  SX({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });
}

class SY extends Animator<double> {

  double? from;
  double? to;
  int duration;
  int delay;
  Curve? curve;

  SY({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });
}

class RX extends Animator<double> {

  double? from;
  double? to;
  int duration;
  int delay;
  Curve? curve;

  RX({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });
}

class RY extends Animator<double> {
  double? from;
  double? to;
  int duration;
  int delay;
  Curve? curve;

  RY({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });
}

class RZ extends Animator<double> {

  double? from;
  double? to;
  int duration;
  int delay;
  Curve? curve;

  RZ({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });
}

class TX extends Animator<double> {

  double? from;
  double? to;
  int duration;
  int delay;
  Curve? curve;

  TX({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });
}

class TY extends Animator<double> {

  double? from;
  double? to;
  int duration;
  int delay;
  Curve? curve;

  TY({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });
}

class C extends Animator<Color> {

  Color? from;
  Color? to;
  int duration;
  int delay;
  Curve? curve;

  C({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });
}

class B extends Animator<BorderRadius> {

  BorderRadius? from;
  BorderRadius? to;
  int duration;
  int delay;
  Curve? curve;

  B({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });
}

class Delay extends Animator {

  int duration;
  int delay;

  Delay({
    this.duration = 0,
    /// 无效
    this.delay = 0,
  });
}
