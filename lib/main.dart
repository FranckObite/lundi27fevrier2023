import 'package:flutter/material.dart';
import 'package:jeudi23challenge/maFuction.dart';

import 'ffounction.dart';
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
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          padding: new EdgeInsets.only(top: 50.0),
          child: Center(
            child: Column(children: [
              CircleAvatar(
                radius: 50.0,

                backgroundColor: Color.fromARGB(255, 106, 80, 2),

                //foregroundColor: Color.fromARGB(255, 31, 0, 8),
                //foregroundImage: AssetImage('images/moi.png'),
              ),
              SizedBox(height: 20.0),
              Text(
                "Obité franck",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
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
                    Divider(),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: App(),
                    ),
                    Divider(),
                    FonctionMio(),
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
