import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:jeudi23challenge/section21/controlleur/feed_Controller.dart';

import '../modele/rss_type.dart';

class HomeController extends StatelessWidget {
  HomeController({super.key});

  List<RssType> types = [
    RssType(type: "Infos", url: "https://www.francebleu.fr/rss/a-la-une.xml"),
    RssType(type: "Sport", url: "https://www.francebleu.fr/rss/sports.xml"),
    RssType(type: "Culture", url: "https://www.francebleu.fr/rss/culture.xml"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: types.length,
        child: Scaffold(
          appBar: AppBar(
              title: Text(
                "Mon flux rss",
              ),
              bottom: TabBar(
                tabs: types
                    .map((type) => Tab(
                          text: type.type,
                        ))
                    .toList(),
              )
              ),
          body: TabBarView(
            children:
                types.map((type) => FeedController(url: type.url)).toList(),
          ),
        ));
  }
}
