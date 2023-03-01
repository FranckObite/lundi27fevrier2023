import 'package:flutter/material.dart';
import 'package:jeudi23challenge/pages/exoSection10.dart';
import 'package:jeudi23challenge/pages/pageExoDuLundi27Fevrier.dart';
import 'package:jeudi23challenge/pages/section10Exo.dart';

class Nafo extends StatelessWidget {
  const Nafo({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: new ListView(
        children: [
          //hearder
          new UserAccountsDrawerHeader(
            accountName: Text("Franck Obité"),
            accountEmail: Text("obitefrank@gmail.com"),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                //backgroundColor: Colors.grey,
                foregroundImage: AssetImage("images/moi.png"),

                child: Icon(Icons.person, color: Colors.white),
              ),
            ),
            decoration:
                new BoxDecoration(color: Color.fromARGB(255, 4, 123, 111)),
          ),

          /* MafonctionMia(
              ttext: "hhh",
              colorr: Colors.brown,
              iconn: Icons.person,
              lienPage: Manchin(),
            ), */

          //body

          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MonApp()));
            },
            child: ListTile(
              title: Text("challenge exo section 10 francais"),
              leading: Icon(
                Icons.facebook_rounded,
                color: Colors.red,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text(" Challenge exo section 5 anglais"),
              leading: Icon(
                Icons.person,
                color: Colors.red,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => chalengeLudi27Complet()));
            },
            child: ListTile(
              title: Text("challenge du lundi27 fevrier"),
              leading: Icon(
                Icons.run_circle,
                color: Colors.red,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              //Navigator.push(context,
              //MaterialPageRoute(builder: (context) => new Cart()));
            },
            child: ListTile(
              title: Text(" Challenge du mardi28"),
              leading: Icon(
                Icons.list_alt_outlined,
                color: Colors.red,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text(" Challenge à venir"),
              leading: Icon(
                Icons.snowing,
                color: Colors.red,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => S10()));
            },
            child: ListTile(
              title: Text(" Autres challenges"),
              leading: Icon(Icons.settings, color: Colors.grey),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text("A propos"),
              leading: Icon(Icons.help, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }

  /* InkWell iconnn(
      {required String ttexx,
      required Color couleurrr,
      required IconData iconn,
      required Widget pagke}) {
    return InkWell(
      onTap: () {
        Navigator.push(context as BuildContext,
            MaterialPageRoute(builder: (context) => pagke));
      },
      child: ListTile(
        title: Text(ttexx),
        leading: Icon(iconn, color: couleurrr),
      ),
    );
  } */
}
