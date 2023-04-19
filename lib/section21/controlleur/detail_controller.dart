import 'package:flutter/material.dart';
import 'package:jeudi23challenge/section21/modele/article.dart';
import 'package:jeudi23challenge/section21/vue/description_texte.dart';
import 'package:jeudi23challenge/section21/vue/image_view.dart';
import 'package:jeudi23challenge/section21/vue/my_padd.dart';
import 'package:jeudi23challenge/section21/vue/title_text.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DetailController extends StatelessWidget {
  const DetailController({super.key, required this.article});
  final Article article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padd(),
            TitleTextView(
              title: article.title,
            ),
            Padd(),
            ImageView(imageUrl: article.imageUrl),
            Padd(),
            Divider(),
            Padd(),
            DescriptionTextView(description: article.description),
            Padd(),
            ElevatedButton(
                onPressed: handleToWeb, child: Text("Vers l'article complet"))
          ],
        ),
      ),
    );
  }

  handleToWeb() async {
    if (await canLaunch(article.link)) {
      await launchUrlString(article.link);
    }
  }
}
