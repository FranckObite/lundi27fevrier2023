import 'package:flutter/material.dart';
import 'package:jeudi23challenge/section21/modele/article.dart';
import 'package:jeudi23challenge/section21/vue/tile_view.dart';

class ListVue extends StatelessWidget {
  const ListVue({super.key, required this.article});

  final List<Article> article;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (contex, int index) {
          final articles = article[index];
          return TileView(articles: article[index]);
        },
        separatorBuilder: (context, int index) {
          return Divider();
        },
        itemCount: article.length);
  }
}
