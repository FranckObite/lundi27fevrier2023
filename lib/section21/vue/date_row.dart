import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:jeudi23challenge/section21/modele/feed_parser.dart';
import 'package:webfeed/webfeed.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

import 'package:jeudi23challenge/section21/modele/article.dart';

import '../modele/date_parser.dart';

class DateRow extends StatelessWidget {
  const DateRow({super.key, required this.date});
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    List<Article> article = [];

    return Row(
      children: [
        Spacer(),
        Text(
          DateParser().readableDate(date),
          style: TextStyle(
              color: Colors.red, fontStyle: FontStyle.italic, fontSize: 15),
        )
      ],
    );
  }
}
