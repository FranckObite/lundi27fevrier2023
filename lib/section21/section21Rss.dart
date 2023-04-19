import 'package:flutter/material.dart';
import 'package:jeudi23challenge/section21/controlleur/feed_Controller.dart';
import 'package:jeudi23challenge/section21/controlleur/home_Controller.dart';
import 'package:jeudi23challenge/section21/modele/feed_parser.dart';
import 'package:webfeed/webfeed.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

import 'modele/article.dart';

class Section21 extends StatelessWidget {
  const Section21({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeController(),
    );
  }
}
