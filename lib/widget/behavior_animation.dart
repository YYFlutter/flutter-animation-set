import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../animation_set.dart';
import '../animator.dart';

class YYFadeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      alignment: Alignment.bottomCenter,
      child: AnimatorSet(
        child: Container(
          width: 40,
          height: 20,
          alignment: Alignment.center,
          child: Text(
            "确定",
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
            ),
          ),
        ),
        animatorSet: [
          Serial(
            duration: 1000,
            serialList: [
              O(from: 0.2, to: 1.0),
              TY(from: 0.0, to: 10.0),
              C(from: Colors.white, to: Colors.red[400]),
              B(
                from: BorderRadius.circular(0.0),
                to: BorderRadius.circular(10.0),
              ),
            ],
          ),
          Delay(duration: 2000),
        ],
      ),
    );
  }
}

class YYSingleLike extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      width: 40,
      height: 40,
      child: AnimatorSet(
        child: Icon(
          Icons.favorite,
          color: Colors.white,
          size: 20,
        ),
        animatorSet: [
          Serial(
            duration: 2400,
            serialList: [
              O(from: 1.0, to: 0.0),
              SX(from: 0.4, to: 1.5),
              SY(from: 0.4, to: 1.5),
              TY(from: 0.0, to: -30.0, curve: Curves.fastOutSlowIn),
            ],
          ),
        ],
      ),
    );
  }
}

class YYLove extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          AnimatorSet(
            child: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 30,
            ),
            animatorSet: [
              Serial(duration: 1000, serialList: [
                SX(from: 0.0, to: 1.0, curve: Curves.bounceInOut),
                SY(from: 0.0, to: 1.0, curve: Curves.bounceInOut),
              ]),
              Delay(duration: 500),
            ],
          ),
          makeLove(10, 20, Curves.fastOutSlowIn),
          makeLove(-10, 20, Curves.fastOutSlowIn),
          makeLove(20, 0, Curves.fastOutSlowIn),
          makeLove(-20, 0, Curves.fastOutSlowIn),
          makeLove(-10, -20, Curves.fastOutSlowIn),
          makeLove(10, -20, Curves.fastOutSlowIn),
        ],
      ),
    );
  }
}

Widget makeLove(double tx, double ty, Curve curves) {
  return Container(
    width: 10,
    height: 10,
    child: AnimatorSet(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
      ),
      animatorSet: [
        Delay(duration: 700),
        Serial(
          duration: 800,
          serialList: [
            TX(from: 0.0, to: tx, curve: curves),
            TY(from: 0.0, to: ty, curve: curves),
            SX(from: 1.0, to: 0.2, curve: curves),
            SY(from: 1.0, to: 0.2, curve: curves),
            O(from: 1.0, to: 0.8, curve: curves)
          ],
        ),
      ],
    ),
  );
}

class YYSpringMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          AnimatorSet(
            animationType: AnimationType.reverse,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amberAccent[400],
                borderRadius: BorderRadius.circular(5.0),
              ),
              width: 30,
              height: 10,
            ),
            animatorSet: [
              Serial(
                duration: 2000,
                serialList: [
                  TY(from: 0.0, to: 40.0, curve: Curves.elasticInOut),
                  TX(from: 0.0, to: 20.0, curve: Curves.elasticInOut),
                  SX(from: 1.0, to: 0.1, curve: Curves.elasticInOut),
                  SY(from: 1.0, to: 0.1, curve: Curves.elasticInOut),
                ],
              ),
            ],
          ),
          AnimatorSet(
            animationType: AnimationType.reverse,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.brown[400],
                borderRadius: BorderRadius.circular(5.0),
              ),
              width: 30,
              height: 10,
            ),
            animatorSet: [
              Serial(
                duration: 2000,
                serialList: [
                  TY(from: 0.0, to: 26.0, curve: Curves.elasticInOut),
                  TX(from: 0.0, to: 20.0, curve: Curves.elasticInOut),
                  SX(from: 1.0, to: 0.1, curve: Curves.elasticInOut),
                  SY(from: 1.0, to: 0.1, curve: Curves.elasticInOut),
                ],
              ),
            ],
          ),
          AnimatorSet(
            animationType: AnimationType.reverse,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(5.0),
              ),
              width: 30,
              height: 10,
            ),
            animatorSet: [
              Serial(
                duration: 2000,
                serialList: [
                  TY(from: 0.0, to: 12.0, curve: Curves.elasticInOut),
                  TX(from: 0.0, to: 20.0, curve: Curves.elasticInOut),
                  SX(from: 1.0, to: 0.1, curve: Curves.elasticInOut),
                  SY(from: 1.0, to: 0.1, curve: Curves.elasticInOut),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class YYFoldMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          AnimatorSet(
            animationType: AnimationType.reverse,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              width: 30,
              height: 10,
            ),
            animatorSet: [
              Serial(
                duration: 2000,
                serialList: [
                  TY(from: 0.0, to: 40.0, curve: Curves.elasticInOut),
                  SX(from: 1.0, to: 0.1, curve: Curves.elasticInOut),
                  SY(from: 1.0, to: 0.1, curve: Curves.elasticInOut),
                ],
              ),
            ],
          ),
          AnimatorSet(
            animationType: AnimationType.reverse,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              width: 30,
              height: 10,
            ),
            animatorSet: [
              Serial(
                duration: 2000,
                delay: 100,
                serialList: [
                  TY(from: 0.0, to: 26.0, curve: Curves.elasticInOut),
                  SX(from: 1.0, to: 0.1, curve: Curves.elasticInOut),
                  SY(from: 1.0, to: 0.1, curve: Curves.elasticInOut),
                ],
              ),
            ],
          ),
          AnimatorSet(
            animationType: AnimationType.reverse,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              width: 30,
              height: 10,
            ),
            animatorSet: [
              Serial(
                duration: 2000,
                delay: 200,
                serialList: [
                  TY(from: 0.0, to: 12.0, curve: Curves.elasticInOut),
                  SX(from: 1.0, to: 0.1, curve: Curves.elasticInOut),
                  SY(from: 1.0, to: 0.1, curve: Curves.elasticInOut),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
