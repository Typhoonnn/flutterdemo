import 'dart:math';
import 'package:flutter/material.dart';
// void main() => runApp(MyApp());
class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}
class _DetailState extends State<Detail> with TickerProviderStateMixin {
  late AnimationController animationController1;
  late AnimationController animationController2;
  late AnimationController animationController3;
  late AnimationController animationController4;
  late Animation animation1;
  late Animation animation2;
  late Animation animation3;
  late Animation animation4;
  int rotateTime = 0;

  @override
  void initState() {
    animationController1 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    animationController2 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    animationController3 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    animationController4 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    animation1 =
        Tween(begin: 0, end: pi / 2).animate(animationController1);
    animation2 =
        Tween(begin: pi / 2, end: pi).animate(animationController2);
    animation3 =
        Tween(begin: pi, end: pi + pi/2).animate(animationController3);
    animation4 =
        Tween(begin: pi + pi/2, end: pi + pi).animate(animationController4);
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
    animationController1.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            home: Container(
              child: Column(
                children: [
                  const SizedBox(height: 100,),
                  Container(
                    width: 500,
                    height: 500,
                    child: GestureDetector(
                      onTap: _rotateChildContinuously,
                      child: RotateTrans(
                        Image.network(
                          // "assets/pic/img001.png",
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnRQlEsOnBqoLuKHuNYUSv_l4O0GnnRlSE7DZHBwDLPUZWDdE9ufxABuDs_lm35hCwFk0&usqp=CAU",
                          fit: BoxFit.fill,
                        ),
                      buildAnimation())
                    ),
                  )
                ],
              )
            ),
          );
  }
  _rotateChildContinuously() {
    print(rotateTime);
    final temp = rotateTime + 1;
    setState(() {
      if (temp > 4) { // 针对转玩一圈的情况
        rotateTime = temp % 4;
      } else {
        rotateTime++;
      }
      if (rotateTime == 1) {
        animationController1.forward(from:0);
      } else if (rotateTime == 2) {
        animationController2.forward(from:0);
      } else if (rotateTime == 3) {
        animationController3.forward(from:0);
      } else if (rotateTime == 4) {
        animationController4.forward(from:0);
      }

    });
  }
  Animation buildAnimation() {
    if (rotateTime == 1 || rotateTime == 0) {
      return animation1;
    } else if (rotateTime == 2) {
      return animation2;
    } else if (rotateTime == 3) {
      return animation3;
    } else if (rotateTime == 4) {
      rotateTime = 0;
      return animation4;
    } else {
      return animation1;
    }
  }
}
class RotateTrans extends StatelessWidget {
  final Widget child;
  final Animation animation;
  RotateTrans(this.child, this.animation);
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      child: child,
      builder: (context, child) {
        return Container(
          child: Transform.rotate(
            angle: animation.value,
            child: Container(
              width: 100.0,
              height: 100.0,
              key: const ValueKey("myImgCan"),
              child: child,
            ),
          ),
        );
      },
    );
  }
}
