import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("detail page")),
        body: MainContent(),
      );
  }
}

class MainContent extends StatefulWidget {
  const MainContent({Key? key}) : super(key: key);

  @override
  _MainContentState createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: 500,
            height: 500,
            child: Image.asset("assets/pic/img001.png"),
          ),
          ElevatedButton(
            child: Text("放大"),
            onPressed: () {
              print('点击放大');
            },
          ),
          ElevatedButton(
            child: Text("右旋90度"),
            onPressed: () {
              print('旋转');
            },
          ),
        ],
      ),
    );
  }
}