import 'package:flutter/material.dart';
import 'package:jeudi23challenge/section21/controlleur/detail_controller.dart';
import 'package:jeudi23challenge/section21/vue/title_text.dart';

import '../modele/article.dart';
import 'date_row.dart';
import 'description_texte.dart';
import 'image_view.dart';

class TileView extends StatelessWidget {
  const TileView({super.key, required this.articles});
  final Article articles;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final route = MaterialPageRoute(
            builder: (context) => DetailController(article: articles));
        Navigator.push(context, route);
      },
      child: Container(
        margin: EdgeInsets.all(8.0),
        child: Column(
          children: [
            DateRow(date: articles.date),
            ImageView(
              imageUrl: articles.imageUrl,
            ),
            TitleTextView(title: articles.title),
            Padding(padding: EdgeInsets.only(top: 10)),
            DescriptionTextView(description: articles.description)
          ],
        ),
      ),
    );
    ;
  }
}
