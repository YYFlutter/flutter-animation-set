# ✨ Flutter Animation Set

[![pub package](https://img.shields.io/pub/v/flutter_spinkit.svg)](https://pub.dartlang.org/packages/flutter_spinkit)

简化Flutter交错动画。用动画配置的形式，通过时间线去驱动Flutter的交错动画。你可以

1. 使用`Flutter Animation Set`现有的动画组件
2. 使用`Flutter Animation Set`去创建新的动画组件
3. 贡献你的`Flutter Animation Set`动画组件

## 🎖 Installing

```yaml
coming soon
```

## ⚡ Use Animation Set Widget

**1、import**

```dart
import 'package:flutter_animation_set/widget/transition_animations.dart';
import 'package:flutter_animation_set/widget/behavior_animation.dart';
```

**2、use**

```dart
child: YYRotatingPlane(),
```

**3、road map**

> transition_animations 过渡动画

<table>
  <tr>
    <td align="center">
      <img src="./gif/1.gif" width="90px">
      <br />
      YYRotatingPlane
      <br />
      ✅
    </td>
    <td align="center">
      <img src="./gif/2.gif" width="90px">
      <br />
      YYDoubleBounce
      <br />
      ✅
    </td>
    <td align="center">
      <img src="./gif/3.gif" width="90px">
      <br />
      YYWave
      <br />
      ✅
    </td>
    <td align="center">
      <img src="./gif/4.gif" width="90px">
      <br />
      YYWanderingCubes
      <br />
      ✅
    </td>
    <td align="center">
      <img src="./gif/5.gif" width="90px">
      <br />
      YYFadingFour
      <br />
      ✅
    </td>
    <td align="center">
      <img src="./gif/6.gif" width="90px">
      <br />
      YYFadingCube
      <br />
      ✅
    </td>
  </tr>
  <tr>
    <td align="center">
      <img src="./gif/7.gif" width="90px">
      <br />
      YYPulse
      <br />
      ✅
    </td>
    <td align="center">
      <img src="./gif/8.gif" width="90px">
      <br />
      YYThreeBounce
      <br />
      ✅
    </td>
    <td align="center">
      <img src="./gif/9.gif" width="90px">
      <br />
      YYThreeLine
      <br />
      ✅
    </td>
    <td align="center">
      <img src="./gif/10.gif" width="90px">
      <br />
      YYCubeGrid
      <br />
      ✅
    </td>
    <td align="center">
      <img src="./gif/11.gif" width="90px">
      <br />
      YYRotatingCircle
      <br />
      ✅
    </td>
    <td align="center">
      <img src="./gif/12.gif" width="90px">
      <br />
      YYPumpingHeart
      <br />
      ✅
    </td>
  </tr>
  <tr>
    <td align="center">
      <img src="./gif/13.gif" width="90px">
      <br />
      YYRipple
      <br />
      ✅
    </td>
    <td align="center">
      <img src="./gif/14.gif" width="90px">
      <br />
      YYRotateLine
      <br />
      ✅
    </td>
    <td align="center">
      <img src="./gif/15.gif" width="90px">
      <br />
      YYCubeFadeIn
      <br />
      ✅
    </td>
    <td align="center">
      <img src="./gif/16.gif" width="90px">
      <br />
      YYBlinkGrid
      <br />
      ✅
    </td>
  </tr>
</table>

> behavior_animation 行为动画

<table>
  <tr>
    <td align="center">
      <img src="./gif/17.gif" width="90px">
      <br />
      YYFadeButton
      <br />
      ✅
    </td>
    <td align="center">
      <img src="./gif/18.gif" width="90px">
      <br />
      YYLike
      <br />
      ✅
    </td>
    <td align="center">
      <img src="./gif/19.gif" width="90px">
      <br />
      YYLove
      <br />
      ✅
    </td>
    <td align="center">
      <img src="./gif/20.gif" width="90px">
      <br />
      YYMenu
      <br />
      ✅
    </td>
    <td align="center">
      <img src="./gif/20.gif" width="90px">
      <br />
      YYMenu
      <br />
      ✅
    </td>
    <td align="center">
      <img src="./gif/20.gif" width="90px">
      <br />
      YYMenu
      <br />
      ✅
    </td>
  </tr>
</table>

**4、thanks**

* [flutter_spinkit](https://github.com/jogboms/flutter_spinkit)

## ⚡ Create Animation Set Widget By YourSelf

**1、import**

```dart
import 'package:flutter_animation_set/animation_set.dart';
import 'package:flutter_animation_set/animator.dart';
```

**2、api**

about animation

* W(width)：控制宽度的变化，如果是按比例拉升，建议用SX替代
* H(height)：控制高度的变化，如果是按比例拉升，建议用SY替代
* P(padding)：控制边距的变化
* O(opacity)：控制透明度的变化
* SX(scaleX)：以中点进行X轴的缩放
* SY(scaleY)：以中点进行Y轴的缩放
* RX(rotateX)：以中点进行X轴的旋转
* RY(rotateY)：以中点进行Y轴的旋转
* RZ(rotateZ)：以中点进行Z轴的旋转
* TX(transitionX)：进行X轴的平移
* TY(transitionY)：进行Y轴的平移
* C(color)：控制背景颜色变化
* B(border)：控制背景边框变化

about timeLine

* Delay(timeDelay)：延长时间线，进入等待阶段
* Serial(Combine)：通过组合动画，达到通知播放的效果

## For Example

**1、demo**

```dart

```

**2、create**

```dart

```

## Bugs/Requests

* If your application has problems, please submit your code and effect to Issue.
* Pull request are also welcome.

## About

QQ群:

## License

MIT License
