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
          margin: const EdgeInsets.all(20.0),
          child: ListTile(
            title: const Text('Dental treatment'),
            subtitle: const Text('Dentistry usually encompasses practices related to the oral cavity.[7] According to the World Health Organization, oral diseases are major public health problems due to their high incidence and prevalence across the globe, with the disadvantaged affected more than other socio-economic groups.'),
            onTap: () {
              Navigator.pushNamed(context, "/imgList");
            }
          ),
        ),
        Container(
          margin: const EdgeInsets.all(20.0),
          child: ListTile(
            title: const Text('Education and licensing'),
            subtitle: const Text('John M. Harris started the world\'s first dental school in Bainbridge, Ohio, and helped to establish dentistry as a health profession. It opened on 21 February 1828, and today is a dental museum.'),
            onTap: () {
              Navigator.pushNamed(context, "/imgList");
            }
          ),
        ),
        Container(
          margin: const EdgeInsets.all(20.0),
          child: ListTile(
            title: const Text('Specialties'),
            subtitle: const Text('Some dentists undertake further training after their initial degree in order to specialize. Exactly which subjects are recognized by dental registration bodies varies according to location.'),
            onTap: () {
              Navigator.pushNamed(context, "/imgList");
            }
          ),
        ),
        Container(
          margin: const EdgeInsets.all(20.0),
          child: ListTile(
            title: const Text('History'),
            subtitle: const Text('Tooth decay was low in pre-agricultural societies, but the advent of farming society about 10,000 years ago correlated with an increase in tooth decay (cavities).'),
            onTap: () {
              Navigator.pushNamed(context, "/imgList");
            }
          ),
        ),
        Container(
          margin: const EdgeInsets.all(20.0),
          child: ListTile(
            title: const Text('Modern dentistry'),
            subtitle: const Text("The Egyptian Mummies that I have seen, have had their Mouths open, and somewhat gaping, which affordeth a good opportunity to view and observe their Teeth"),
            onTap: () {
              Navigator.pushNamed(context, "/imgList");
            }
          ),
        ),
        Container(
          margin: const EdgeInsets.all(20.0),
          child: ListTile(
            title: const Text('Hazards in modern dentistry'),
            subtitle: const Text('Long term occupational noise exposure can contribute to permanent hearing loss, which is referred to as noise-induced hearing loss (NIHL) and tinnitus. '),
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