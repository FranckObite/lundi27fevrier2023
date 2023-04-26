import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

import 'mesAmis.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Basics"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 4,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/piscine 1.jpeg"),
                              fit: BoxFit.cover)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 160.0),
                          child: CircleAvatar(
                            radius: 70,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 68,
                              foregroundImage:
                                  AssetImage("images/jardin 1.jpeg"),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Text(
                  "Mathieu Codabee",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "Un jour les chats domineronts le monde, mais pas aujourd'hui, c'est l'heure de la sieste."),
                SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        height: MediaQuery.of(context).size.height / 16,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            "Modifier le profil",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 6,
                        height: MediaQuery.of(context).size.height / 16,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: Icon(
                          Icons.edit,
                          color: Colors.white,
                        )),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "A propos de moi",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.home),
                    Text(
                      "France",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.badge),
                    Text(
                      "Developpeur ios",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.favorite),
                    Text(
                      "en couple",
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Amis",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
                mesAmis()
              ],
            ),
          )),
    );
  }
}
