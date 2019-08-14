import 'package:flutter/material.dart';
import 'package:flutter_animation_set/widget/behavior_animation.dart';
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
          body: GridView.count(
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
              BoxColor(child: YYFadeButton(), color: Color(0xFF3279B5)),
              BoxColor(child: YYSingleLike(), color: Color(0xFFF4A352)),
              BoxColor(child: YYLove(), color: Color(0xFF2F3E50)),
              BoxColor(child: YYSpringMenu(), color: Color(0xFF00BA9B)),
              BoxColor(child: YYFoldMenu(), color: Color(0xFF58BD60)),
            ],
          )),
    );
  }
}

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
