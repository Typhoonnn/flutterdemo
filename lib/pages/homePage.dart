import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("home page")),
        body: list(),
      );
  }
}

class list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: EdgeInsets.all(20.0),
        children: const <Widget>[
        // Padding(
        //   padding: EdgeInsets.all(20.0)
        // ),
        ListTile(
          leading: Icon(Icons.settings,size: 40),
          title: Text('测试测试13123412sdcawa'),
          subtitle: Text('副标题测试')
        ),
        ListTile(
          title: Text('测试测试'),
          subtitle: Text('副标题测试')
        ),
        ListTile(
          title: Text('测试测试'),
          subtitle: Text('副标题测试')
        ),
        ListTile(
          title: Text('测试测试'),
          subtitle: Text('副标题测试')
        ),
      ]
    );
  }
}


// class HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold (
//       appBar: new AppBar(
//         title: new Text('Startup Name Generator'),
//       ),
//       body: _buildSuggestions(),
//     );
//   }
//   Widget _buildSuggestions() {
//     return new ListView.builder(
//         itemBuilder: (context, i) {
//           if (i.isOdd) return new Divider();
//           final index = i ~/ 2;
//           if (index >= _suggestions.length) {
//             _suggestions.addAll(generateWordPairs().take(10));
//           }
//           return _buildRow(_suggestions[index]);
//         }
//     );
//   }
//
// }