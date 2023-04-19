import 'package:flutter/material.dart';
import 'package:jeudi23challenge/section21/modele/feed_parser.dart';
import 'package:jeudi23challenge/section21/vue/date_row.dart';
import 'package:jeudi23challenge/section21/vue/description_texte.dart';
import 'package:jeudi23challenge/section21/vue/list_view.dart';
import 'package:jeudi23challenge/section21/vue/tile_view.dart';
import 'package:jeudi23challenge/section21/vue/title_text.dart';
import 'package:webfeed/webfeed.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

import 'package:jeudi23challenge/section21/modele/article.dart';

import '../vue/image_view.dart';

class FeedController extends StatelessWidget {
  const FeedController({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Article>>(
      future: FeedParser().getFeed(url),
      builder: (context, snapshot) {
        return ListVue(article: snapshot.data ?? []);
      },
    );
  }
}
