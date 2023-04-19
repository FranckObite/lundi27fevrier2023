import 'package:http/http.dart' as http;
import 'package:webfeed/webfeed.dart';

import 'article.dart';

class FeedParser {
  Future<List<Article>> getFeed(String urlString) async {
    List<Article> article = [];

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
