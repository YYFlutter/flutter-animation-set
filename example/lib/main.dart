import 'package:flutter/material.dart';
import 'package:flutter_animation_set/animation_set.dart';
import 'package:flutter_animation_set/animator.dart';
import 'package:flutter_animation_set/widget/behavior_animations.dart';
import 'package:flutter_animation_set/widget/transition_animations.dart';

void main() => runApp(AnimatorSetActivity());

class AnimatorSetActivity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AnimatorSetState();
  }
}

class AnimatorSetState extends State<AnimatorSetActivity> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text("Transition Animations"),
              ),
            ),
            SliverGrid.count(
              crossAxisCount: 4,
              children: <Widget>[
                BoxColor(child: YYRotatingPlane(), color: Color(0xFFD35413)),
                BoxColor(child: YYDoubleBounce(), color: Color(0xFF2F3E50)),
                BoxColor(child: YYWave(), color: Color(0xFF00BA9B)),
                BoxColor(child: YYWanderingCubes(), color: Color(0xFF3279B5)),
                BoxColor(child: YYFadingFour(), color: Color(0xFF323232)),
                BoxColor(child: YYFadingCube(), color: Color(0xFF58BD60)),
                BoxColor(child: YYPulse(), color: Color(0xFF7D8A8B)),
                BoxColor(child: YYThreeBounce(), color: Color(0xFFD35413)),
                BoxColor(child: YYThreeLine(), color: Color(0xFFF48A8B)),
                BoxColor(child: YYCubeGrid(), color: Color(0xFFD35413)),
                BoxColor(child: YYRotatingCircle(), color: Color(0xFF3279B5)),
                BoxColor(child: YYPumpingHeart(), color: Color(0xFFF4A352)),
                BoxColor(child: YYRipple(), color: Color(0xFF58BD60)),
                BoxColor(child: YYRotateLine(), color: Color(0xFF00BA9B)),
                BoxColor(child: YYCubeFadeIn(), color: Color(0xFFFCCB63)),
                BoxColor(child: YYBlinkGrid(), color: Color(0xFF323232)),
              ],
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text("Behavior Animations"),
              ),
            ),
            SliverGrid.count(
              crossAxisCount: 4,
              children: <Widget>[
                BoxColor(child: YYFadeButton(), color: Color(0xFF3279B5)),
                BoxColor(child: YYSingleLike(), color: Color(0xFFF4A352)),
                BoxColor(child: YYLove(), color: Color(0xFF2F3E50)),
                BoxColor(child: YYSpringMenu(), color: Color(0xFF00BA9B)),
                BoxColor(child: YYFoldMenu(), color: Color(0xFF58BD60)),
              ],
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text("Leaning Curves"),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return curveBox[index];
                },
                childCount: curveBox.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

var curveBox = [
  CurveBox(curve: Curves.linear, str: "linear"),
  CurveBox(curve: Curves.bounceIn, str: "bounceIn"),
  CurveBox(curve: Curves.bounceInOut, str: "bounceInOut"),
  CurveBox(curve: Curves.bounceOut, str: "bounceOut"),
  CurveBox(curve: Curves.decelerate, str: "decelerate"),
  CurveBox(curve: Curves.ease, str: "ease"),
  CurveBox(curve: Curves.easeIn, str: "easeIn"),
  CurveBox(curve: Curves.easeInSine, str: "easeInSine"),
  CurveBox(curve: Curves.easeInQuad, str: "easeInQuad"),
  CurveBox(curve: Curves.easeInCubic, str: "easeInCubic"),
  CurveBox(curve: Curves.easeInQuart, str: "easeInQuart"),
  CurveBox(curve: Curves.easeInQuint, str: "easeInQuint"),
  CurveBox(curve: Curves.easeInExpo, str: "easeInExpo"),
  CurveBox(curve: Curves.easeInCirc, str: "easeInCirc"),
  CurveBox(curve: Curves.easeInBack, str: "easeInBack"),
  CurveBox(curve: Curves.easeInOut, str: "easeInOut"),
  CurveBox(curve: Curves.easeInOutSine, str: "easeInOutSine"),
  CurveBox(curve: Curves.easeInOutQuad, str: "easeInOutQuad"),
  CurveBox(curve: Curves.easeInOutCubic, str: "easeInOutCubic"),
  CurveBox(curve: Curves.easeInOutQuart, str: "easeInOutQuart"),
  CurveBox(curve: Curves.easeInOutQuint, str: "easeInOutQuint"),
  CurveBox(curve: Curves.easeInOutExpo, str: "easeInOutExpo"),
  CurveBox(curve: Curves.easeInOutCirc, str: "easeInOutCirc"),
  CurveBox(curve: Curves.easeInOutBack, str: "easeInOutBack"),
  CurveBox(curve: Curves.easeOut, str: "easeOut"),
  CurveBox(curve: Curves.easeOutSine, str: "easeOutSine"),
  CurveBox(curve: Curves.easeOutQuad, str: "easeOutQuad"),
  CurveBox(curve: Curves.easeOutCubic, str: "easeOutCubic"),
  CurveBox(curve: Curves.easeOutQuart, str: "easeOutQuart"),
  CurveBox(curve: Curves.easeOutQuint, str: "easeOutQuint"),
  CurveBox(curve: Curves.easeOutExpo, str: "easeOutExpo"),
  CurveBox(curve: Curves.easeOutCirc, str: "easeOutCirc"),
  CurveBox(curve: Curves.easeOutBack, str: "easeOutBack"),
  CurveBox(curve: Curves.elasticIn, str: "elasticIn"),
  CurveBox(curve: Curves.elasticInOut, str: "elasticInOut"),
  CurveBox(curve: Curves.elasticOut, str: "elasticOut"),
  CurveBox(curve: Curves.fastOutSlowIn, str: "fastOutSlowIn"),
  CurveBox(curve: Curves.fastLinearToSlowEaseIn, str: "fastLinearToSlowEaseIn"),
  CurveBox(curve: Curves.slowMiddle, str: "slowMiddle"),
];

class BoxColor extends StatefulWidget {
  BoxColor({this.child, this.color = Colors.black});

  final child;
  final color;

  @override
  State<StatefulWidget> createState() {
    return BoxColorState();
  }
}

class BoxColorState extends State<BoxColor> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(30),
        child: widget.child,
        color: widget.color,
      ),
    );
  }
}

class CurveBox extends StatefulWidget {
  CurveBox({this.curve, this.str});

  final curve;
  final str;

  @override
  State<StatefulWidget> createState() {
    return CurveBoxState();
  }
}

class CurveBoxState extends State<CurveBox> {
  @override
  Widget build(BuildContext context) {
    var _screenWidth = MediaQuery.of(context).size.width;
    return Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0))),
        color: Colors.red,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              makeCurvesTitleBox(_screenWidth, widget.str),
              makeCurvesCube(_screenWidth, 0, widget.curve),
              makeCurvesCube(_screenWidth, 100, widget.curve),
              makeCurvesCube(_screenWidth, 200, widget.curve),
              makeCurvesCube(_screenWidth, 300, widget.curve),
              makeCurvesCube(_screenWidth, 400, widget.curve),
              Divider(height: 10, color: Colors.white)
            ],
          ),
        ));
  }
}

Widget makeCurvesTitleBox(width, text) {
  return SizedBox(
    width: width,
    height: 15,
    child: Text(
      text.toString(),
      style: TextStyle(color: Colors.white, fontSize: 12),
    ),
  );
}

Widget makeCurvesCube(width, delay, curve) {
  return AnimatorSet(
    child: SizedBox(
      child: Container(
        color: Colors.white,
        width: 20,
        height: 20,
      ),
    ),
    animatorSet: [
      TX(
        delay: delay,
        duration: 2000,
        from: 0.0,
        to: width - 50,
        curve: curve,
      )
    ],
  );
}
