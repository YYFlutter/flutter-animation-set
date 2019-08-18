import 'package:flutter/material.dart';
import 'package:flutter_animation_set/widget/behavior_animations.dart';
import 'package:flutter_animation_set/widget/transition_animations.dart';
import 'package:flutter_animation_set/animation_set.dart';
import 'package:flutter_animation_set/animator.dart';

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
                padding: EdgeInsets.all(12.0),
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
                padding: EdgeInsets.all(12.0),
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
                padding: EdgeInsets.all(12.0),
                child: Text("Leaning Curves"),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return box[index];
                },
                childCount: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

var box = [
  BoxColor(
      child: CurvesLeaning(curve: Curves.linear), color: Color(0xFF000000)),
  BoxColor(
      child: CurvesLeaning(curve: Curves.bounceInOut),
      color: Color(0xFF000000)),
];

class BoxColor extends StatefulWidget {
  BoxColor({this.child, this.color = Colors.black});

  var child;
  var color;

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
        padding: EdgeInsets.all(30.0),
        child: widget.child,
        color: widget.color,
      ),
    );
  }
}

class CurvesLeaning extends StatefulWidget {
  CurvesLeaning({this.curve});

  Curve curve;

  @override
  State<StatefulWidget> createState() {
    return CurvesLeaningState();
  }
}

class CurvesLeaningState extends State<CurvesLeaning> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Flex(
        direction: Axis.vertical,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: AnimatorSet(
              child: SizedBox(
                child: Container(
                  color: Colors.white,
                ),
                width: 20,
                height: 20,
              ),
              animatorSet: [
                TX(
                  duration: 2000,
                  from: 0.0,
                  to: 80.0,
                  curve: widget.curve,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
