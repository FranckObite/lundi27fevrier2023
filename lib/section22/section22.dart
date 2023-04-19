import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:jeudi23challenge/section21/modele/feed_parser.dart';
import 'package:webfeed/webfeed.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

import '../section21/modele/article.dart';
import 'modele/feed.dart';

class HomePageChallenge22 extends StatefulWidget {
  const HomePageChallenge22({super.key});

  @override
  State<HomePageChallenge22> createState() => _HomePageChallenge22State();
}

class _HomePageChallenge22State extends State<HomePageChallenge22> {
  List<Article> article = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Image.asset(
                "images/cp.png",
                height: 40,
              ),
              Text('France 24 '),
            ],
          ),
          backgroundColor: Colors.blue,
        ),
        body: ListView.separated(
            itemBuilder: (contex, int index) {
              final articles = article[index];
              return InkWell(
                onTap: (() => print("Tapé sur: ${articles.title}")),
                child: Container(
                  margin: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Spacer(),
                          Text(
                            readableDate(articles.date),
                            style: TextStyle(
                                color: Colors.red,
                                fontStyle: FontStyle.italic,
                                fontSize: 15),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Image.network(
                          articles.imageUrl,
                          fit: BoxFit.cover,
                          height: MediaQuery.of(context).size.height / 2,
                          width: MediaQuery.of(context).size.width / 1.5,
                        ),
                      ),
                      Text(
                        articles.title,
                        style: TextStyle(
                          color: Color.fromARGB(255, 3, 40, 124),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text(
                        articles.description,
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, int index) {
              return Divider();
            },
            itemCount: article.length),
        floatingActionButton: FloatingActionButton(
          onPressed: getFeed,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  getFeed() {
    FeedParserr().getFeed().then((newArticle) => setState(
          () {
            article = newArticle;
          },
        ));
  }

  String readableDate(DateTime dateTime) {
    DateFormat dateFormat = DateFormat.yMMMMEEEEd();
    String string = dateFormat.format(dateTime);
    return string;
  }
}
