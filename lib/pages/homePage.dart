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
  const list({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(20.0),
          child: ListTile(
            leading: Image.network('http://5b0988e595225.cdn.sohucs.com/images/20180816/9377165a1b39438dab1ff74e581000a5.jpeg'),
            title: Text('牙釉质能够生长出一些细小的缝隙，他们能够分散咀嚼的压力，同时保护牙齿断裂。航天工程师正在研究这种机制，以便能够发明更好的宇宙飞船。'),
            onTap: () {
              Navigator.pushNamed(context, "/imgList");
            }
          ),
        ),
        Container(
          margin: EdgeInsets.all(20.0),
          child: ListTile(
            leading: Image.network('http://5b0988e595225.cdn.sohucs.com/images/20180816/9377165a1b39438dab1ff74e581000a5.jpeg'),
            title: Text('氟能够保护牙齿衰老。因为它能够阻止牙釉质中矿物质的流失，促进牙釉质吸收唾液中的钙和磷酸盐。'),
            onTap: () {
              Navigator.pushNamed(context, "/imgList");
            }
          ),
        ),
        Container(
          margin: EdgeInsets.all(20.0),
          child: ListTile(
            leading: Image.network('http://5b0988e595225.cdn.sohucs.com/images/20180816/9377165a1b39438dab1ff74e581000a5.jpeg'),
            title: Text('1945年，密歇根的大溪城是世界上**个在供水系统中加氟的城市。现在，美国三分之二的居民都能用到加氟的水。'),
            onTap: () {
              Navigator.pushNamed(context, "/imgList");
            }
          ),
        ),
        Container(
          margin: EdgeInsets.all(20.0),
          child: ListTile(
            leading: Image.network('http://5b0988e595225.cdn.sohucs.com/images/20180816/9377165a1b39438dab1ff74e581000a5.jpeg'),
            title: Text('保护牙齿的战斗进行到哪一步了？佛罗里达大学的口腔学退休教授杰弗瑞·哈里曼已经着手进行变异链球菌的人体试验了。它是一种口腔细菌的基因变种，会产生比较少的酸。'),
            onTap: () {
              Navigator.pushNamed(context, "/imgList");
            }
          ),
        ),
        Container(
          margin: EdgeInsets.all(20.0),
          child: ListTile(
            leading: Image.network('http://5b0988e595225.cdn.sohucs.com/images/20180816/9377165a1b39438dab1ff74e581000a5.jpeg'),
            title: Text('但这其实是牙医的鬼伎俩：这种植牙通常都失败，而且会使牙齿更糟糕，因为移植的牙齿多半带有梅毒。'),
            onTap: () {
              Navigator.pushNamed(context, "/imgList");
            }
          ),
        ),
        Container(
          margin: EdgeInsets.all(20.0),
          child: ListTile(
            leading: Image.network('http://5b0988e595225.cdn.sohucs.com/images/20180816/9377165a1b39438dab1ff74e581000a5.jpeg'),
            title: Text('我们的牙齿并不能抵御我们嘴巴里的细菌。这些细菌会产生酸，他们会侵蚀牙釉质里的钙和磷酸盐，这就会导致龋齿。'),
            onTap: () {
              Navigator.pushNamed(context, "/imgList");
            }
          ),
        )
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