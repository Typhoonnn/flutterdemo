import 'package:flutter/material.dart';

class ImgList extends StatelessWidget {
  const ImgList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("image list page")),
        body: const Text('这里是客户牙齿图片列表页'),
      );
  }
}