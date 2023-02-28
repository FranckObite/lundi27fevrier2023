import 'dart:ffi';

import 'package:flutter/material.dart';

import 'monIconeClicable.dart';
import 'mon_icone.dart';

class MonApp extends StatefulWidget {
  @override
  State<MonApp> createState() => _MonAppState();
}

class _MonAppState extends State<MonApp> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var plateforme = Theme.of(context).platform;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 42, 8, 180),
          title: Text("Mon Appli Chalenge"),
        ),
        body: Container(
          height: size.height,
          width: size.width,
          color: Colors.white,
          child: Container(
            child: SingleChildScrollView(
                child: Column(children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  monImage(hauteur: 200, largeur: size.width),
                  Padding(
                      padding: EdgeInsets.only(top: 150),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 50),
                            child: Stack(
                              children: [
                                maPhoto2profile(rondeur: 50),
                                maPhoto2profie(rondeur: (50)),
                              ],
                            ),
                          )
                        ],
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              monText(
                  text: "Obité Franck Josué",
                  fontStyle: 30,
                  macouleur: Colors.black),
              SizedBox(
                height: 5,
              ),
              Text(
                "Un jour, les chats dominerons le monde mais pas aujourd'hui, \n c'est l'heure de la sieste. ",
                style: TextStyle(
                    color: Color.fromARGB(255, 144, 140, 140),
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 500,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Expanded(child: modifierProfile(" modifier profil "))
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 50,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                              child: MonIcone(
                            icon: Icons.edit,
                            taille: 30,
                            Couleurr: Colors.white,
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 30,
                color: Color.fromARGB(255, 213, 210, 210),
                thickness: 1,
              ),
              Padding(padding: EdgeInsets.only(top: 5)),
              Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          monText(
                            text: "A propos de moi",
                            fontStyle: 20,
                            macouleur: Colors.black87,
                          ),
                          Spacer(),
                          monIconnn(),

                          /* buttonsUI(), child: column(
                            children[

                            ]
                          ) */
                        ],
                      )),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MonIcone(
                        icon: Icons.home,
                        taille: 25,
                        Couleurr: Colors.black,
                      ),
                      monText(
                          text: "Hyères les palmiers, France",
                          fontStyle: 10,
                          macouleur: Color.fromARGB(255, 79, 77, 77))
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MonIcone(
                        icon: Icons.badge_rounded,
                        taille: 25,
                        Couleurr: Colors.black,
                      ),
                      monText(
                          text: "Dévéloppeur IOS",
                          fontStyle: 10,
                          macouleur: Color.fromARGB(255, 79, 77, 77))
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MonIcone(
                        icon: Icons.favorite,
                        taille: 25,
                        Couleurr: Colors.black,
                      ),
                      monText(
                          text: " En couple",
                          fontStyle: 10,
                          macouleur: Color.fromARGB(255, 79, 77, 77))
                    ],
                  ),
                ],
              ),
              Divider(
                height: 30,
                color: Color.fromARGB(255, 213, 210, 210),
                thickness: 1,
              ),
              Padding(padding: EdgeInsets.only(top: 0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  monText(text: "Amis", fontStyle: 20, macouleur: Colors.black),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 195,
                          height: 250,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://thumbs.dreamstime.com/b/piano-%C3%A0-queue-sur-le-littoral-un-la-plage-de-129527738.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                        monText(
                            text: "Isabelle",
                            fontStyle: 15,
                            macouleur: Colors.black),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Container(
                          width: 195,
                          height: 250,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://thumbs.dreamstime.com/b/piano-%C3%A0-queue-sur-le-littoral-un-la-plage-de-129527738.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                        monText(
                            text: "Isabelle",
                            fontStyle: 15,
                            macouleur: Colors.black),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Container(
                          width: 195,
                          height: 250,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://thumbs.dreamstime.com/b/piano-%C3%A0-queue-sur-le-littoral-un-la-plage-de-129527738.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                        monText(
                            text: "Isabelle",
                            fontStyle: 15,
                            macouleur: Colors.black),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 30,
                color: Color.fromARGB(255, 104, 102, 102),
                thickness: 1,
              ),
              Padding(padding: EdgeInsets.only(top: 5)),
              Container(
                width: size.width,
                height: 500,
                decoration: BoxDecoration(
                  color: Color.fromARGB(130, 177, 170, 170),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        width: 585,
                        height: 60,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                                radius: 50,
                                foregroundImage: NetworkImage(
                                    "https://thumbs.dreamstime.com/b/piano-%C3%A0-queue-sur-le-littoral-un-la-plage-de-129527738.jpg")),
                            monText(
                                text: "Obité Franck",
                                fontStyle: 20,
                                macouleur: Color.fromARGB(255, 39, 37, 37)),
                            Spacer(),
                            monText(
                                text: "Il y a 5 heures",
                                fontStyle: 20,
                                macouleur: Color.fromARGB(255, 56, 54, 54))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ])),
          ),
        ));
  }

  Text monText(
      {required String text,
      required double fontStyle,
      required Color macouleur}) {
    return Text(
      text,
      style: TextStyle(
        color: macouleur,
        fontSize: fontStyle,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }

  Text modifierProfile(String text) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
      textAlign: TextAlign.center,
    );
  }

  CircleAvatar maPhoto2profile({required double rondeur}) {
    return CircleAvatar(
      radius: 52,
      backgroundColor: Colors.white,
      child: CircleAvatar(
          radius: 50,
          foregroundImage: NetworkImage(
              "https://images.pexels.com/photos/723997/pexels-photo-723997.jpeg?auto=compress&cs=tinysrgb&w=600")),
    );
  }

  CircleAvatar maPhoto2profie({required double rondeur}) {
    return CircleAvatar(
      radius: 52,
      backgroundColor: Colors.white,
      child: CircleAvatar(
          radius: 50,
          foregroundImage: NetworkImage(
              "https://thumbs.dreamstime.com/b/piano-%C3%A0-queue-sur-le-littoral-un-la-plage-de-129527738.jpg")),
    );
  }

  Image monImage({required double hauteur, required double largeur}) {
    return Image.asset(
      "images/beach.jpg",
      fit: BoxFit.cover,
      height: hauteur,
      width: largeur,
    );
  }
}
