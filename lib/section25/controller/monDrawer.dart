import 'package:flutter/material.dart';
import 'package:jeudi23challenge/section25/view/realisation.dart';

import '../view/Section25.dart';

class monDrawer extends StatelessWidget {
  const monDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            onTap: () {
              MaterialPageRoute route =
                  MaterialPageRoute(builder: ((contex) => RealisationPage()));
              Navigator.push(context, route);
            },
          )
        ],
      ),
    );
  }
}
