import 'package:flutter/material.dart';
import 'package:jeudi23challenge/page/todoHomePage.dart';
import 'package:jeudi23challenge/pages/challengeInscription.dart';
import 'package:jeudi23challenge/pages/changerThemePage.dart';
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TodoListApp()));
            },
            child: ListTile(
              title: Text(" ToDo App"),
              leading: Icon(
                Icons.list_alt_outlined,
                color: Colors.red,
              ),
            ),
          ),
          InkWell(
            child: ListTile(
              title: Text(" Challenge Changer le theme de mon App"),
              leading: Icon(
                Icons.nightlight_round,
                color: Colors.red,
              ),
              trailing: IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Plus de Details"),
                            content: Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ChangerLeThemeDeMaPage()));
                                  },
                                  child: ListTile(
                                    title:
                                        new Text('Changer le theme de mon App'),
                                    leading: Icon(Icons.sunny, color: Colors.red ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MonInscriptionApp()));
                                  },
                                  child: ListTile(
                                    title:
                                        new Text("Challenge Page de Connexion"),
                                    leading: Icon(Icons.login_outlined, color: Colors.red,),
                                  ),
                                )
                              ],
                            ),
                          );
                        });
                  },
                  icon: Icon(Icons.arrow_drop_down_sharp)),
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
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MonInscriptionApp()));
            },
            child: ListTile(
              title: Text("Page de Connexion"),
              leading: Icon(Icons.login, color: Colors.red),
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
