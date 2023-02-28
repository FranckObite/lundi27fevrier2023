import 'package:flutter/material.dart';
import 'package:jeudi23challenge/fonctionFonction.dart';
import 'package:jeudi23challenge/maFuction.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeudi23challenge/pages/exoSection10.dart';
import 'package:jeudi23challenge/pages/pageVide.dart';

import 'ffounction.dart';
import 'fonctionNaviguons.dart';
import 'ludi27.dart';

void main() {
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
        title: Text("Mon Appli Chalenge"),
      ),
      drawer: Nafo(),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          padding: new EdgeInsets.only(top: 50.0),
          child: Center(
            child: Column(children: [
              CircleAvatar(
                radius: 50.0,

                //backgroundColor: Color.fromARGB(255, 106, 80, 2),

                //foregroundColor: Color.fromARGB(255, 31, 0, 8),
                foregroundImage: AssetImage('images/moi.png'),
              ),
              SizedBox(height: 20.0),
              Text(
                "Obité franck",
                style: GoogleFonts.pacifico(fontSize: 40, color: Colors.white),
              ),
              SizedBox(height: 20),
              Text("DEVELOPPEUR FLUTER",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  )),
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
                            title: Text(' Home '),
                            leading: Icon(
                              Icons.home,
                              color: Color.fromARGB(255, 167, 53, 53),
                            ),
                            trailing: Icon(Icons.arrow_drop_down),
                          ),
                        ),
                      ),
                    ),
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
            ]),
          ),
        ),
      ),
    );
  }
}
