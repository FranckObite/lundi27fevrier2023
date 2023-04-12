import 'package:flutter/material.dart';

class FournitureListe extends StatefulWidget {
  const FournitureListe({super.key});

  @override
  State<FournitureListe> createState() => _FournitureListeState();
}

List maliste = [
  "4 Cahiers de 100 pages",
  "2 Cahiers double ligne",
  "2 Crayons à papier",
  "1 Pot de colle ou tube de colle transparente",
  "1 Gomme",
  "1 Paquet de crayon de couleur court",
  "1 Taille crayon",
  "1 Ardoise",
  "1 Boite de craie blanche",
  "8 Stylos (4 bleu, 2 rouge, 2 vert)",
  "1 Scotch, 1 Règle plate"
      "3 Protège cahiers (bleu, vert, jaune)",
  "Couverture plastique des livres"
];

bool switchValues = true;

class _FournitureListeState extends State<FournitureListe> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Liste de fournitures(CP2  )"),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  switchValues ? "Mode liste" : "Mode Grid",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                switchMethode()
              ],
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Container(
              child: switchValues ? NewWidget() : monGrid(),
            ),
          ),
        ),
      ),
    );
  }

  Widget switchMethode() {
    return Switch(
        activeColor: Colors.black,
        value: switchValues,
        onChanged: (newValu) {
          setState(() {
            switchValues = newValu;
          });
        });
  }
}

class monGrid extends StatelessWidget {
  const monGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: maliste.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Card(
                color: Colors.blueGrey,
                elevation: 10,
                child: Center(
                  child: Text(
                    maliste[index],
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )),
          );
          monCard(indexx: index);
        });
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: maliste.length,
        itemBuilder: (context, index) {
          return monCard(
            indexx: index,
          );
        });
  }
}

class monCard extends StatelessWidget {
  const monCard({
    super.key,
    required this.indexx,
  });
  final indexx;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: Card(
          color: Colors.blueGrey,
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child:
                      Text((maliste.indexOf(maliste[indexx]) + 1).toString()),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  maliste[indexx],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          )),
    );
  }
}
