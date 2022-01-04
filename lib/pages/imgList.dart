import 'package:flutter/material.dart';
import 'dart:math';


class ImgList extends StatelessWidget {
    const ImgList({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text("image list page")),
            body: ImgBox()
        );
    }
}


class ImgBox extends StatefulWidget {

    @override
    State<StatefulWidget> createState ()=> Imgs();
}

class Imgs extends State {
  
    @override
    Widget build(BuildContext context) {
        return Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
                children: [                   
                    Flex(
                        direction: Axis.horizontal,
                        children: [
                            Expanded(
                                flex:  1,
                                child: Img()
                            ),
                            Expanded(
                                flex : 1,
                                child: Img()
                            ),
                        ],
                    ),
                    Flex(
                        direction: Axis.horizontal,
                        children: [
                            Expanded(
                                flex:  1,
                                child: Img()
                            ),
                            Expanded(
                                flex : 1,
                                child: Img()
                            ),
                        ],
                    )
                ],
            )
        );
    }
}


class Img extends StatelessWidget {

    String url = '';

    final List<String> images = [
        "https://img.iplaysoft.com/wp-content/uploads/2019/free-images/free_stock_photo.jpg",
        "https://ichef.bbci.co.uk/news/999/cpsprodpb/15951/production/_117310488_16.jpg",
        "https://media.istockphoto.com/photos/business-man-pushing-large-stone-up-to-hill-business-heavy-tasks-and-picture-id825383494?k=20&m=825383494&s=612x612&w=0&h=tEqZ5HFZcM3lmDm_cmI7hOeceiqy9gYrkyLTTkrXdY4=",
        "https://media.istockphoto.com/photos/sunset-with-pebbles-on-beach-in-nice-france-picture-id1157205177?k=20&m=1157205177&s=612x612&w=0&h=bmCFFtaLRtF_eYhjZ3FkhPXU3X-yrdvr85xvl2CmQ9g=",
        "https://media.macphun.com/img/uploads/customer/how-to/579/15531840725c93b5489d84e9.43781620.jpg?q=85&w=1340",
        "https://static.independent.co.uk/2021/04/05/12/SWNS_SOCIETY_PHOTOS_03.jpg?width=982&height=726&auto=webp&quality=75",
        "https://media.istockphoto.com/photos/lily-lake-fiery-sunset-picture-id1299550772?b=1&k=20&m=1299550772&s=170667a&w=0&h=9Zl6mBq0l8wUDmIghk4hkhmyYcQQsJyqM1HJjRULQSI=",
        "https://www.groovypost.com/wp-content/uploads/2018/06/taking-photo-picture-landmark-phone-search-featured.jpg",
    ];

    final rng = Random();

    Img(){
        int index = rng.nextInt(images.length);
        url = images.removeAt(index);
    }

    @override
    Widget build(BuildContext context) {
        return Padding(
            padding: const EdgeInsets.all(5.0),
            child: GestureDetector(
                child: Image(
                    image: NetworkImage(url),
                    height: 200.0,
                    fit: BoxFit.cover,
                ),
                onTap: (){
                    Navigator.pushNamed(context, "/detail", arguments: {
                        "imageUrl": url
                    });
                }
            )
        );
    }
}