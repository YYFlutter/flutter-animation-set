# ✨ Flutter Animation Set

[![pub package](https://img.shields.io/pub/v/flutter_spinkit.svg)](https://pub.dartlang.org/packages/flutter_spinkit)

简化Flutter交错动画。用动画集的列表形式，通过时间去驱动Flutter的交错动画。开发者可以通过已有的动画集组件进行使用，或者通过动画集库去创建新的动画组件。已有的组件一共分为两种形式

* transition_animations：过渡动画。如Loading
* behavior_animation：行为动画。如菜单展开，点赞

### 🎖 Installing

```yaml
coming soon
```

### ⚡ Use Animation Set Widget

1、import

```dart
import 'package:flutter_animation_set/widget/transition_animations.dart';
import 'package:flutter_animation_set/widget/behavior_animation.dart';
```

2、use

```dart
child: YYWave()
```

3、road map

<table>
  <tr>
    <td align="center">
      <img src="https://raw.githubusercontent.com/ybq/AndroidSpinKit/master/art/RotatingPlane.gif" width="100px">
      <br />
      RotatingPlane
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/ybq/AndroidSpinKit/master/art/DoubleBounce.gif" width="100px">
      <br />
      DoubleBounce
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/ybq/AndroidSpinKit/master/art/Wave.gif" width="100px">
      <br />
      Wave
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/ybq/AndroidSpinKit/master/art/WanderingCubes.gif" width="100px">
      <br />
      WanderingCubes
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/jogboms/flutter_spinkit/master/screenshots/FadingFour.gif" width="100px">
      <br />
      FadingFour
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/jogboms/flutter_spinkit/master/screenshots/FadingCube.gif" width="100px">
      <br />
      FadingCube
      <br />
      ✅
    </td>
  </tr>
  <tr>
    <td align="center">
      <img src="https://raw.githubusercontent.com/ybq/AndroidSpinKit/master/art/Pulse.gif" width="100px">
      <br />
      Pulse
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/ybq/AndroidSpinKit/master/art/ChasingDots.gif" width="100px">
      <br />
      ChasingDots
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/ybq/AndroidSpinKit/master/art/ThreeBounce.gif" width="100px">
      <br />
      ThreeBounce
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/ybq/AndroidSpinKit/master/art/Circle.gif" width="100px">
      <br />
      Circle
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/ybq/AndroidSpinKit/master/art/CubeGrid.gif" width="100px">
      <br />
      CubeGrid
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/ybq/AndroidSpinKit/master/art/FadingCircle.gif" width="100px">
      <br />
      FadingCircle
      <br />
      ✅
    </td>
  </tr>
  <tr>
    <td align="center">
      <img src="https://raw.githubusercontent.com/ybq/AndroidSpinKit/master/art/RotatingCircle.gif" width="100px">
      <br />
      RotatingCircle
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/ybq/AndroidSpinKit/master/art/FoldingCube.gif" width="100px">
      <br />
      FoldingCube
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/jogboms/flutter_spinkit/master/screenshots/heart.gif" width="100px">
      <br />
      PumpingHeart
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/jogboms/flutter_spinkit/master/screenshots/dual-ring.gif" width="100px">
      <br />
      DualRing
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/jogboms/flutter_spinkit/master/screenshots/hour-glass.gif" width="100px">
      <br />
      HourGlass
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/jogboms/flutter_spinkit/master/screenshots/PouringHourGlass.gif" width="100px">
      <br />
      PouringHourGlass
      <br />
      ✅
    </td>
  </tr>
  <tr>
    <td align="center">
      <img src="https://raw.githubusercontent.com/jogboms/flutter_spinkit/master/screenshots/grid.gif" width="100px">
      <br />
      FadingGrid
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/jogboms/flutter_spinkit/master/screenshots/ring.gif" width="100px">
      <br />
      Ring
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/jogboms/flutter_spinkit/master/screenshots/ripple.gif" width="100px">
      <br />
      Ripple
      <br />
      ✅
    </td>
    <td align="center">
      <img src="https://raw.githubusercontent.com/jogboms/flutter_spinkit/master/screenshots/spinning-circle.gif" width="100px">
      <br />
      SpinningCircle
      <br />
      ✅
    </td>
  </tr>
</table>

4、thanks

* [flutter_spinkit](https://github.com/jogboms/flutter_spinkit)

### 🎮 Create Animation Set Widget By YourSelf

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

### For Example

1、demo

```dart

```

2、create

```dart

```

## 🐛 Bugs/Requests

* If your application has problems, please submit your code and effect to Issue.
* Pull request are also welcome.

### ❗️ Note

QQ群:

For help on editing plugin code, view the [documentation](https://flutter.io/platform-plugins/#edit-code).

## ⭐️ License

MIT License
