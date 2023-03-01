import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_pro/carousel_pro.dart';

import '../fonctionFonction.dart';
import '../ludi27.dart';

class chalengeLudi27Complet extends StatefulWidget {
  const chalengeLudi27Complet({super.key});

  @override
  State<chalengeLudi27Complet> createState() => _chalengeLudi27CompletState();
}

class _chalengeLudi27CompletState extends State<chalengeLudi27Complet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 4, 123, 111),
      appBar: AppBar(
        title: Text("Mon Appli Challenge"),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              image_carousel,
              Divider(),
              Align(
                alignment: Alignment.centerLeft,
                child: App(),
              ),
              Divider(),
              Myfonction(),
            ],
          ),
        ),
      ),
    );
  }

  Widget image_carousel = new Container(
    height: 300.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage("images/app.jpeg"),
        AssetImage("images/cover.jpeg"),
        AssetImage("images/flutter.webp"),
        //AssetImage("images/ppp.webp")
      ],
      autoplay: true,
      //animationCurve: Curves.fastOutSlowIn,
      //animationDuration: Duration(milliseconds: 1000),
      dotSize: 4.0,
      dotColor: Colors.red,
      indicatorBgPadding: 2.0,

      dotBgColor: Colors.transparent,
    ),
  );
}
