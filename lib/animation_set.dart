import 'package:flutter/material.dart';

import 'animator.dart';

export 'package:flutter_animation_set/animation_set.dart'
    show AnimatorSet, AnimationType;

enum AnimationType {
  repeat,
  reverse,
}

class AnimatorSet extends StatefulWidget {
  AnimatorSet({
    Key key,
    this.debug = false,
    this.child,
    this.animatorSet = const <Animator>[],
    this.animationType = AnimationType.repeat,
  })  : assert(child != null),
        assert(animatorSet != null),
        super(key: key);

  final bool debug;
  final Widget child;
  final List<Animator> animatorSet;
  final AnimationType animationType;

  @override
  State<StatefulWidget> createState() {
    return AnimatorSetState();
  }
}

class AnimatorSetState extends State<AnimatorSet>
    with SingleTickerProviderStateMixin {
  int _duration = 0; //时间
  AnimationController _controller;
  AnimationType _animationType;

  @override
  void initState() {
    super.initState();

    _animationType = widget.animationType;

    for (var anim in widget.animatorSet) {
      _duration += anim.duration;
    }

    _controller = AnimationController(
      duration: Duration(milliseconds: _duration),
      vsync: this,
    );

    initAnimation();
    startAnimation();
  }

  void initAnimation() {
    _controller
      ..addListener(() {})
      ..addStatusListener((AnimationStatus status) {
        if (_animationType == AnimationType.reverse) {
          if (status == AnimationStatus.completed) {
            _controller.reverse();
          } else if (status == AnimationStatus.dismissed) {
            _controller.forward();
          }
        }
      });
  }

  void startAnimation() {
    if (_animationType == AnimationType.repeat) {
      _controller.repeat();
    } else {
      _controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedLogo(
        debug: widget.debug,
        child: widget.child,
        controller: _controller,
        animatorSet: widget.animatorSet,
        duration: _duration);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class AnimatedLogo extends StatelessWidget {
  ///opacityNotify：监听透明度变化，将正在变化的动画值作为opacityValue
  ///opacity：透明度动画集合
  ///opacityValue：最终显示的透明度
  List<ValueNotifier<double>> opacityNotify = [null, null, null, null];
  List<Animation<double>> opacity = [null, null, null, null];
  double opacityValue;

  Animation<double> width;
  Animation<double> height;
  Animation<EdgeInsets> padding;
  Animation<BorderRadius> borderRadius;
  Animation<Color> color;
  List<Animation<double>> scaleX = [null, null, null, null];
  List<Animation<double>> scaleY = [null, null, null, null];
  List<Animation<double>> rotateX = [null, null, null, null];
  List<Animation<double>> rotateY = [null, null, null, null];
  List<Animation<double>> rotateZ = [null, null, null, null];
  List<Animation<double>> transX = [null, null, null, null];
  List<Animation<double>> transY = [null, null, null, null];

  AnimatedLogo({
    Key key,
    this.debug,
    this.child,
    this.controller,
    this.animatorSet,
    this.duration,
  }) : super(key: key) {
    this._parseAnimation();
    this._initOpacityListener();
  }

  final bool debug;
  final Widget child;
  final Animation<double> controller;
  final List<Animator> animatorSet;
  final int duration;

  ///解析交错动画
  void _parseAnimation() {
    double start = 0.0;
    double end = 0.0;

    for (var anim in animatorSet) {
      start = anim.delay / duration + end; //延时+上次结束
      end = start + anim.duration / duration; //上次开始+时长

      if (debug) {
        print("duration=" +
            duration.toString() +
            " anim.duration=" +
            anim.duration.toString() +
            " anim.delay=" +
            anim.delay.toString() +
            " start=" +
            start.toString() +
            " end=" +
            end.toString());
      }

      if (anim is Serial) {
        ///并行动画处理
        List<Animator> serialList = anim.serialList;
        serialList.forEach((Animator anim2) {
          double tempStart = start + anim.delay / duration;
          _parseAnimation2(anim2, tempStart, end);
        });
      } else {
        ///串行动画处理
        _parseAnimation2(anim, start, end);
      }
    }
  }

  void _parseAnimation2(Animator anim, double start, double end) {
    _parseAnimationItem(
      anim,
      start <= 0.0 ? 0.001 : start,
      end >= 1.0 ? 0.999 : end,
    );
  }

  ///透明度变化监听
  void _initOpacityListener() {
    ///默认的透明度，以第一个透明度动画的初始值为准
    opacityValue = opacity[0]?.value ?? 1.0;
    for (int i = 0; i < opacityNotify.length; i++) {
      if (opacityNotify[i] != null) {
        ///监听透明度变化
        opacityNotify[i].addListener(() {
          opacityValue = opacity[i].value;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _buildAnimationWidget, // 动画变化时调用这个函数
      animation: controller, // 要执行的动画
    );
  }

  Widget _buildAnimationWidget(BuildContext context, Widget child) {
    return Container(
      padding: padding?.value ?? EdgeInsets.all(0), // 内边距动画
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.identity()
          ..translate(transX[0]?.value ?? 0.0, transY[0]?.value ?? 0.0)
          ..translate(transX[1]?.value ?? 0.0, transY[1]?.value ?? 0.0)
          ..translate(transX[2]?.value ?? 0.0, transY[2]?.value ?? 0.0)
          ..translate(transX[3]?.value ?? 0.0, transY[3]?.value ?? 0.0),
        child: Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..scale(scaleX[0]?.value ?? 1.0, scaleY[0]?.value ?? 1.0)
            ..scale(scaleX[1]?.value ?? 1.0, scaleY[1]?.value ?? 1.0)
            ..scale(scaleX[2]?.value ?? 1.0, scaleY[2]?.value ?? 1.0)
            ..scale(scaleX[3]?.value ?? 1.0, scaleY[3]?.value ?? 1.0),
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..rotateX(rotateX[0]?.value ?? 0.0)
              ..rotateX(rotateX[1]?.value ?? 0.0)
              ..rotateX(rotateX[2]?.value ?? 0.0)
              ..rotateX(rotateX[3]?.value ?? 0.0)
              ..rotateY(rotateY[0]?.value ?? 0.0)
              ..rotateY(rotateY[1]?.value ?? 0.0)
              ..rotateY(rotateY[2]?.value ?? 0.0)
              ..rotateY(rotateY[3]?.value ?? 0.0)
              ..rotateZ(rotateZ[0]?.value ?? 0.0)
              ..rotateZ(rotateZ[1]?.value ?? 0.0)
              ..rotateZ(rotateZ[2]?.value ?? 0.0)
              ..rotateZ(rotateZ[3]?.value ?? 0.0),
            child: Opacity(
              opacity: opacityValue,
              child: Container(
                child: this.child,
                width: width?.value ?? null,
                height: height?.value ?? null,
                decoration: BoxDecoration(
                  color: color?.value ?? Colors.transparent,
                  borderRadius: borderRadius?.value ?? BorderRadius.circular(0),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  ///解析动画每帧动画
  void _parseAnimationItem(Animator anim, double start, double end) {
    if (debug) {
      print("anim = " +
          anim.toString() +
          "| anim.from = " +
          anim.from.toString() +
          "| anim.to = " +
          anim.to.toString() +
          "| start = " +
          start.toString() +
          "| end = " +
          end.toString());
    }

    if (anim is W) {
      width = Tween<double>(
        begin: anim.from,
        end: anim.to,
      ).animate(
        CurvedAnimation(
          parent: controller,
          curve: Interval(
            start,
            end,
            curve: anim.curve,
          ),
        ),
      );
    } else if (anim is H) {
      height = Tween<double>(
        begin: anim.from,
        end: anim.to,
      ).animate(
        CurvedAnimation(
          parent: controller,
          curve: Interval(
            start,
            end,
            curve: anim.curve,
          ),
        ),
      );
    } else if (anim is P) {
      padding = EdgeInsetsTween(
        begin: anim.from,
        end: anim.to,
      ).animate(
        CurvedAnimation(
          parent: controller,
          curve: Interval(
            start,
            end,
            curve: anim.curve,
          ),
        ),
      );
    } else if (anim is O) {
      for (int i = 0; i < opacity.length; i++) {
        if (opacity[i] == null) {
          opacityNotify[i] = ValueNotifier(anim.from);
          opacity[i] = Tween<double>(
            begin: anim.from,
            end: anim.to,
          ).animate(
            CurvedAnimation(
              parent: controller,
              curve: Interval(
                start,
                end,
                curve: anim.curve,
              ),
            ),
          )..addListener(() {
              ///由于在播放完成后会回到初始值，需要过滤掉
              if (opacity[i].value != anim.from) {
                opacityNotify[i].value = opacity[i].value;
              }
            });
          break;
        }
      }
    } else if (anim is SX) {
      for (int i = 0; i < scaleX.length; i++) {
        if (scaleX[i] == null) {
          scaleX[i] = Tween<double>(
            begin: anim.from,
            end: anim.to,
          ).animate(
            CurvedAnimation(
              parent: controller,
              curve: Interval(
                start,
                end,
                curve: anim.curve,
              ),
            ),
          );
          break;
        }
      }
    } else if (anim is SY) {
      for (int i = 0; i < scaleY.length; i++) {
        if (scaleY[i] == null) {
          scaleY[i] = Tween<double>(
            begin: anim.from,
            end: anim.to,
          ).animate(
            CurvedAnimation(
              parent: controller,
              curve: Interval(
                start,
                end,
                curve: anim.curve,
              ),
            ),
          );
          break;
        }
      }
    } else if (anim is RX) {
      for (int i = 0; i < rotateX.length; i++) {
        if (rotateX[i] == null) {
          rotateX[i] = Tween<double>(
            begin: anim.from,
            end: anim.to,
          ).animate(
            CurvedAnimation(
              parent: controller,
              curve: Interval(
                start,
                end,
                curve: anim.curve,
              ),
            ),
          );
          break;
        }
      }
    } else if (anim is RY) {
      for (int i = 0; i < rotateY.length; i++) {
        if (rotateY[i] == null) {
          rotateY[i] = Tween<double>(
            begin: anim.from,
            end: anim.to,
          ).animate(
            CurvedAnimation(
              parent: controller,
              curve: Interval(
                start,
                end,
                curve: anim.curve,
              ),
            ),
          );
          break;
        }
      }
    } else if (anim is RZ) {
      for (int i = 0; i < rotateZ.length; i++) {
        if (rotateZ[i] == null) {
          rotateZ[i] = Tween<double>(
            begin: anim.from,
            end: anim.to,
          ).animate(
            CurvedAnimation(
              parent: controller,
              curve: Interval(
                start,
                end,
                curve: anim.curve,
              ),
            ),
          );
          break;
        }
      }
    } else if (anim is TX) {
      for (int i = 0; i < transX.length; i++) {
        if (transX[i] == null) {
          transX[i] = Tween<double>(
            begin: anim.from,
            end: anim.to,
          ).animate(
            CurvedAnimation(
              parent: controller,
              curve: Interval(
                start,
                end,
                curve: anim.curve,
              ),
            ),
          );
          break;
        }
      }
    } else if (anim is TY) {
      for (int i = 0; i < transY.length; i++) {
        if (transY[i] == null) {
          transY[i] = Tween<double>(
            begin: anim.from,
            end: anim.to,
          ).animate(
            CurvedAnimation(
              parent: controller,
              curve: Interval(
                start,
                end,
                curve: anim.curve,
              ),
            ),
          );
          break;
        }
      }
    } else if (anim is C) {
      color = ColorTween(
        begin: anim.from,
        end: anim.to,
      ).animate(
        CurvedAnimation(
          parent: controller,
          curve: Interval(
            start,
            end,
            curve: anim.curve,
          ),
        ),
      );
    } else if (anim is B) {
      borderRadius = BorderRadiusTween(
        begin: anim.from,
        end: anim.to,
      ).animate(
        CurvedAnimation(
          parent: controller,
          curve: Interval(
            start,
            end,
            curve: anim.curve,
          ),
        ),
      );
    }
  }
}
