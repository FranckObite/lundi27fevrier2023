import 'package:flutter/material.dart';
import 'package:jeudi23challenge/pages/monIconeClicable.dart';
import 'package:jeudi23challenge/pages/mon_icone.dart';

class Suiteexo10 extends StatefulWidget {
  @override
  State<Suiteexo10> createState() => _Suiteexo10State();
}

class _Suiteexo10State extends State<Suiteexo10> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Exo10(
              imageProfil: "images/moi.png",
              icon1: Icons.favorite,
              icon2: Icons.message,
              image2: "images/beach.jpg"),
          SizedBox(height: 30),
          Exo10(
              imageProfil: "images/moi.png",
              icon1: Icons.favorite,
              icon2: Icons.message,
              image2: "images/beach.jpg"),
          SizedBox(height: 30),
          Exo10(
              imageProfil: "images/moi.png",
              icon1: Icons.favorite,
              icon2: Icons.message,
              image2: "images/beach.jpg"),
          SizedBox(height: 30),
          Exo10(
              imageProfil: "images/moi.png",
              icon1: Icons.favorite,
              icon2: Icons.message,
              image2: "images/beach.jpg"),
        ],
      ),
    );
  }
}

class Exo10 extends StatefulWidget {
  final imageProfil;
  final image2;
  final icon1;
  final icon2;

  const Exo10(
      {super.key,
      required this.imageProfil,
      required this.icon1,
      required this.icon2,
      required this.image2});

  @override
  State<Exo10> createState() => _Exo10State();
}

class _Exo10State extends State<Exo10> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Container(
        width: size.width,
        height: 710,
        decoration: BoxDecoration(
          color: Color.fromARGB(130, 177, 170, 170),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                          radius: 30,
                          foregroundImage: AssetImage(widget.imageProfil)),
                      monText(
                          text: "Obité Franck",
                          fontStyle: 20,
                          macouleur: Color.fromARGB(255, 39, 37, 37)),
                      Spacer(),
                      monText(
                          text: "Il y a 5 heures",
                          fontStyle: 20,
                          macouleur: Color.fromARGB(255, 56, 54, 54)),
                    ],
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          height: 400,
                          width: size.width,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(widget.image2),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            monText(
                                text:
                                    "seul sur le sable,  les yeux dans l'eau mon rêve était trop \n beau....",
                                fontStyle: 20,
                                macouleur: Colors.black),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(40),
                          child: Row(
                            children: [
                              MonIcone(
                                  icon: widget.icon1,
                                  taille: 20,
                                  Couleurr: Colors.black),
                              Spacer(),
                              monText(
                                  text: "36 likes",
                                  fontStyle: 20,
                                  macouleur: Colors.black),
                              Spacer(),
                              MonIcone(
                                  icon: widget.icon2,
                                  taille: 20,
                                  Couleurr: Colors.black),
                              Spacer(),
                              monText(
                                  text: "12 commentaires",
                                  fontStyle: 20,
                                  macouleur: Colors.black),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
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
