import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

import 'mon_icone.dart';

class S10 extends StatefulWidget {
  @override
  State<S10> createState() => _S10State();
}

class _S10State extends State<S10> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("suite exo 10"),
        backgroundColor: Color.fromARGB(255, 6, 63, 110),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                S1Oa(
                  photoprofil: "images/moi.png",
                  photopub: "images/beach.jpg",
                  likeicone: Icons.favorite,
                  messageicone: Icons.message,
                  datepub: "A l'instant",
                  commentaire:
                      "seul sur le sable, les yeux dans l'eau, mon rêve était trop  \n beau...",
                  nombredecommentaire: "14 Commentaires",
                  nombredelike: "16 likes",
                ),
                SizedBox(height: 10),
                S1Oa(
                  photoprofil: "images/moi.png",
                  photopub: "images/Edo.jpeg",
                  likeicone: Icons.favorite,
                  messageicone: Icons.message,
                  datepub: " il y a cinq heurres",
                  commentaire:
                      "un mariage divinement célébré 🥰🥰🥰  \n bon ménage à vous...",
                  nombredecommentaire: "78 Commentaires",
                  nombredelike: "500 likes",
                ),
                SizedBox(height: 10),
                S1Oa(
                  photoprofil: "images/moi.png",
                  photopub: "images/z.jpeg",
                  likeicone: Icons.favorite,
                  messageicone: Icons.message,
                  datepub: "il y a deux jours",
                  commentaire:
                      "joyeux, joyeux, joyeux Mariage  \n Trop choux🥰🥰...",
                  nombredecommentaire: "1 Commentaires",
                  nombredelike: "10 likes",
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class S1Oa extends StatefulWidget {
  final photoprofil;
  final photopub;
  final likeicone;
  final messageicone;
  final datepub;
  final commentaire;
  final nombredelike;
  final nombredecommentaire;

  const S1Oa(
      {super.key,
      required this.photoprofil,
      required this.photopub,
      required this.likeicone,
      required this.messageicone,
      required this.datepub,
      required this.commentaire,
      required this.nombredelike,
      required this.nombredecommentaire});

  @override
  State<S1Oa> createState() => _S1OaState();
}

class _S1OaState extends State<S1Oa> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Container(
        width: size.width,
        height: 750,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 212, 210, 210),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                      radius: 30,
                      foregroundImage: AssetImage(widget.photoprofil)),
                  monText(
                      text: "Obité Franck",
                      fontStyle: 20,
                      macouleur: Color.fromARGB(255, 39, 37, 37)),
                  Spacer(),
                  monText(
                      text: widget.datepub,
                      fontStyle: 20,
                      macouleur: Color.fromARGB(255, 56, 54, 54)),
                ],
              ),
              SizedBox(height: 15),
              monText(
                  text: widget.commentaire,
                  fontStyle: 20,
                  macouleur: Colors.black),
              Column(
                children: [
                  Container(
                    width: size.width,
                    height: 500,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(widget.photopub))),
                  ),
                  TextFormField(
                    autocorrect: true,
                    decoration: const InputDecoration(hintText: 'Commenter'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        MonIcone(
                            icon: widget.likeicone,
                            taille: 20,
                            Couleurr: Colors.black),
                        monText(
                            text: widget.nombredelike,
                            fontStyle: 20,
                            macouleur: Colors.black),
                        Spacer(),
                        monText(
                            text: widget.nombredecommentaire,
                            fontStyle: 20,
                            macouleur: Colors.black),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
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
