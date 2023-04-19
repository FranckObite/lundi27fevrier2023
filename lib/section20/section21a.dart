import 'package:flutter/material.dart';
import 'package:jeudi23challenge/section20/listeVille.dart';

import 'claseVille.dart';

class ChallengeSection21 extends StatefulWidget {
  ChallengeSection21({super.key});

  @override
  State<ChallengeSection21> createState() => _ChallengeSection21State();
}

List<Ville> villes = BdVille().listeDesViles;

class _ChallengeSection21State extends State<ChallengeSection21> {
  @override
  Widget build(BuildContext context) {
    final orientationPlatform = MediaQuery.of(context).orientation;
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(" villes de la CI "),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.light),
              Text((orientationPlatform == Orientation.portrait)
                  ? "Vous êtes en mode listView"
                  : " Vous êtes en mode GridView"),
            ],
          )
        ],
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: (orientationPlatform == Orientation.portrait)
              ? maListView()
              : monGridView()),
    ));
  }

  GridView monGridView() {
    return GridView.builder(
        itemCount: villes.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (BuildContext context, int index) {
          final lesVille = villes[index];
          return InkWell(
            onTap: () {
              monShowDialog(lesVille);
            },
            child: Card(
                elevation: 6,
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 300,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                            image: AssetImage("images/${lesVille.imagePath}"),
                            fit: BoxFit.cover),
                      ), /* child: Image.asset("images/${lesVille.imagePath}") */
                    ),
                    Text(
                      lesVille.leNomdeLaVille,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(lesVille.lesDetails),
                    )
                  ],
                ))),
          );
        });
  }

  

  ListView maListView() {
    return ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return tile(index);
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            thickness: 2,
          );
        },
        itemCount: villes.length);
  }

  ListTile tile(int index) {
    final lesVille = villes[index];
    return ListTile(
        title: Text(lesVille.leNomdeLaVille),
        subtitle: Text(lesVille.lesDetails),
        tileColor: Colors.indigoAccent[100],
        trailing: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/${lesVille.imagePath}"),
                  fit: BoxFit.cover)),
        ),
        leading: Text((index + 1).toString()),
        onTap: () {
          monShowDialog(lesVille);
        });
  }

  Future<dynamic> monShowDialog(Ville lesVille) {
    return showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
              content: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                lesVille.leNomdeLaVille,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Image.asset(
                "images/${lesVille.imagePath}",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
              ),
              Text(
                lesVille.plusdeDetaile,
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ));
        });
  }
}
