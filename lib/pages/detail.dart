import 'dart:math';
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}
class _DetailState extends State<Detail> {
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
            home: Column(
              children: [
                const SizedBox(height: 100,),
                SizedBox(
                  width: 500,
                  height: 500,
                  child: GestureDetector(
                    onTap: _addAngle,
                    child: TweenAnimationBuilder(
                      duration: const Duration(milliseconds: 500),
                      tween: Tween(end: rotateVal), 
                      builder: (BuildContext context, double value, Widget? child) {
                        return Transform.rotate(
                            angle: value,
                            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnRQlEsOnBqoLuKHuNYUSv_l4O0GnnRlSE7DZHBwDLPUZWDdE9ufxABuDs_lm35hCwFk0&usqp=CAU", fit: BoxFit.fill,),
                          );
                      }, 
                    ),
                  ),
                )
              ],
            ),
          );
  }

  _addAngle() {
    setState(() {
      rotateVal = rotateVal + pi / 2;
    });
  }
}