import 'package:http/http.dart' as http;
import 'package:webfeed/webfeed.dart';

import 'package:jeudi23challenge/section21/modele/article.dart';

class FeedParserr {
  Future<List<Article>> getFeed() async {
    List<Article> article = [];
    String urlString = "https://www.france24.com/fr/rss";

    final client = http
        .Client(); /* un client c'est quelqu'un qui va faire une requette par rapport à une url*/
    final url = Uri.parse(urlString);
    final clientResponse = await client.get(url);
    final rssFeed = RssFeed.parse(
        clientResponse.body); /* une des class du package webfeed */
    final items = rssFeed.items;
    if (items != null) {
      article = items.map((item) => Article(item: item)).toList();
    }
    return article;
  }
}
