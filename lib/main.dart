import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:jeudi23challenge/fonctionFonction.dart';
import 'package:jeudi23challenge/maFuction.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeudi23challenge/pages/exoSection10.dart';
import 'package:jeudi23challenge/pages/pageVide.dart';
import 'package:jeudi23challenge/pages/section10Exo.dart';

import 'ffounction.dart';
import 'fonctionNaviguons.dart';
import 'ludi27.dart';

import 'package:hive_flutter/hive_flutter.dart';

main() async {
  //initialisation du hive

  await Hive.initFlutter();

  //open a box

  var box = await Hive.openBox("myBox");
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 4, 123, 111),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Mon Appli Challenge"),
      ),
      drawer: Nafo(),
      body: Container(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(children: [
            image_carousel,
            SizedBox(height: 20.0),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(left: 120.0),
              child: ListTile(
                title: Text(
                  "Obité franck",
                  style:
                      GoogleFonts.pacifico(fontSize: 40, color: Colors.white),
                ),
                leading: CircleAvatar(
                  radius: 30.0,

                  //backgroundColor: Color.fromARGB(255, 106, 80, 2),

                  //foregroundColor: Color.fromARGB(255, 31, 0, 8),
                  foregroundImage: AssetImage('images/moi.png'),
                ),
                subtitle: Text("DEVELOPPEUR FLUTER",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: size.width,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(1.0),
                      ),
                      child: InkWell(
                          child: ListTile(
                        title: Text(' +225 075 492 578 '),
                        leading: Icon(
                          Icons.phone,
                          color: Color.fromARGB(255, 160, 34, 34),
                        ),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: size.width,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(1.0),
                      ),
                      child: InkWell(
                        child: ListTile(
                          title: Text(' obitéfrank@gmail.com '),
                          leading: Icon(
                            Icons.email,
                            color: Color.fromARGB(255, 167, 53, 53),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: size.width,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(1.0),
                      ),
                      child: InkWell(
                        child: ListTile(
                          title: Text(' Abidjan/ plateau Dokui '),
                          leading: Icon(
                            Icons.add_location,
                            color: Color.fromARGB(255, 167, 53, 53),
                          ),
                          //trailing: Icon(Icons.one_k),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
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
