import 'dart:math';
import 'package:flutter/material.dart';
// void main() => runApp(MyApp());
class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}
class _DetailState extends State<Detail> with TickerProviderStateMixin {
  double rotateVal = 0.0;

  @override
  void initState() {
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            home: Container(
              child: Column(
                children: [
                  const SizedBox(height: 100,),
                  Container(
                    width: 300,
                    height: 300,
                    child: GestureDetector(
                      onTap: _addAngle,
                      child: TweenAnimationBuilder(
                        duration: const Duration(milliseconds: 500),
                        tween: Tween(end: rotateVal), 
                        builder: (BuildContext context, double value, Widget? child) {
                          return Container(
                            child: Transform.rotate(
                                angle: value,
                                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnRQlEsOnBqoLuKHuNYUSv_l4O0GnnRlSE7DZHBwDLPUZWDdE9ufxABuDs_lm35hCwFk0&usqp=CAU", fit: BoxFit.fill,),
                              ),
                          );
                        }, 
                      ),
                    ),
                  )
                ],
              )
            ),
          );
  }

  _addAngle() {
    setState(() {
      rotateVal = rotateVal + pi / 2;
    });
  }
}