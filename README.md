# ✨ Flutter Animation Set

[![pub package](https://img.shields.io/pub/v/flutter_spinkit.svg)](https://pub.dartlang.org/packages/flutter_spinkit)

简化Flutter交错动画。用动画配置的形式，通过时间线去驱动Flutter的交错动画。你可以

1. 使用`Flutter Animation Set`现有的动画集组件
2. 使用`Flutter Animation Set`去创建新的动画组件
3. 贡献你的`Flutter Animation Set`动画组件

## 🎖 Installing

```yaml
coming soon
```

## ⚡ Use Animation Set Widget

1、import

```dart
import 'package:flutter_animation_set/widget/transition_animations.dart';
import 'package:flutter_animation_set/widget/behavior_animation.dart';
```

2、use

```dart
child: YYRotatingPlane(),
```

3、road map

动画集组件一共分为两种形式

* transition_animations：过渡动画。如YYRotatingPlane、YYDoubleBounce、YYWave
* behavior_animation：行为动画。如YYFadeButton、YYLike、YYLove

<table>
  <tr>
    <td align="center">
      <img src="./gif/1.gif" width="100px">
      <br />
      YYRotatingPlane
      <br />
      ✅
    </td>
    <td align="center">
      <img src="./gif/2.gif" width="100px">
      <br />
      YYDoubleBounce
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/ybq/AndroidSpinKit/master/art/Wave.gif" width="100px">
      <br />
      YYWave
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/ybq/AndroidSpinKit/master/art/WanderingCubes.gif" width="100px">
      <br />
      YYWanderingCubes
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/jogboms/flutter_spinkit/master/screenshots/FadingFour.gif" width="100px">
      <br />
      YYFadingFour
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/jogboms/flutter_spinkit/master/screenshots/FadingCube.gif" width="100px">
      <br />
      YYFadingCube
      <br />
      ✅
    </td>
  </tr>
  <tr>
    <td align="center">
      <img src="https://raw.githubusercontent.com/ybq/AndroidSpinKit/master/art/Pulse.gif" width="100px">
      <br />
      YYPulse
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/ybq/AndroidSpinKit/master/art/ChasingDots.gif" width="100px">
      <br />
      YYThreeBounce
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/ybq/AndroidSpinKit/master/art/ThreeBounce.gif" width="100px">
      <br />
      YYThreeLine
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/ybq/AndroidSpinKit/master/art/Circle.gif" width="100px">
      <br />
      YYCubeGrid
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/ybq/AndroidSpinKit/master/art/CubeGrid.gif" width="100px">
      <br />
      YYRotatingCircle
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/ybq/AndroidSpinKit/master/art/FadingCircle.gif" width="100px">
      <br />
      YYPumpingHeart
      <br />
      ✅
    </td>
  </tr>
  <tr>
    <td align="center">
      <img src="https://raw.githubusercontent.com/ybq/AndroidSpinKit/master/art/RotatingCircle.gif" width="100px">
      <br />
      YYRipple
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/ybq/AndroidSpinKit/master/art/FoldingCube.gif" width="100px">
      <br />
      YYRotateLine
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/jogboms/flutter_spinkit/master/screenshots/heart.gif" width="100px">
      <br />
      YYCubeFadeIn
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/jogboms/flutter_spinkit/master/screenshots/dual-ring.gif" width="100px">
      <br />
      YYBlinkGrid
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/jogboms/flutter_spinkit/master/screenshots/hour-glass.gif" width="100px">
      <br />
      YYFadeButton
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/jogboms/flutter_spinkit/master/screenshots/PouringHourGlass.gif" width="100px">
      <br />
      YYLike
      <br />
      ✅
    </td>
  </tr>
  <tr>
    <td align="center">
      <img src="https://raw.githubusercontent.com/jogboms/flutter_spinkit/master/screenshots/grid.gif" width="100px">
      <br />
      YYLove
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/jogboms/flutter_spinkit/master/screenshots/ring.gif" width="100px">
      <br />
      YYMenu
      <br />
      ✅
    </td>
  </tr>
</table>

4、thanks

* [flutter_spinkit](https://github.com/jogboms/flutter_spinkit)

## ⚡ Create Animation Set Widget By YourSelf

1、import

```dart
import 'package:flutter_animation_set/animation_set.dart';
import 'package:flutter_animation_set/animator.dart';
```

2、api

about animation

* W(width)
* H(height)
* P(padding)
* O(opacity)
* SX(scaleX)
* SY(scaleY)
* RX(rotateX)
* RY(rotateY)
* RZ(rotateZ)
* TX(transitionX)
* TY(transitionY)
* C(color)
* B(border)

about timeLine

* Delay(timeDelay)
* Serial(Combine)

## For Example

1、demo

```dart

```

2、create

```dart

```

## Bugs/Requests

* If your application has problems, please submit your code and effect to Issue.
* Pull request are also welcome.

## About

QQ群:

## License

MIT License
