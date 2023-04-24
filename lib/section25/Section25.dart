import 'package:flutter/material.dart';

class Section25 extends StatelessWidget {
  const Section25({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChallengeSection25(),
    );
  }
}

class ChallengeSection25 extends StatefulWidget {
  const ChallengeSection25({super.key});

  @override
  State<ChallengeSection25> createState() => _ChallengeSection25State();
}

class _ChallengeSection25State extends State<ChallengeSection25> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.pool),
                Text("Mon Jardin idéal"),
              ],
            )),
            ListTile(
              title: Text("Accueil"),
              leading: Icon(
                Icons.home,
                color: Colors.green,
              ),
              onTap: () {
                MaterialPageRoute route =
                    MaterialPageRoute(builder: ((contex) => Section25()));
                Navigator.push(context, route);
              },
            ),
            ListTile(
              title: Text("Réalisation"),
              leading: Icon(
                Icons.grid_4x4,
                color: Colors.green,
              ),
              onTap: () {},
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Mon Jardin idéal"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/piscine 4.jpeg"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: Text(
                  "Accueil",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.green,
                  ),
                )),
              ),
              Text(
                  "Une expertise unique en provence au service de \n tous les jardins du monde. \n Rapprochons nous de la nature.",
                  style: TextStyle(
                    fontSize: 22,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
