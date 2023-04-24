import 'package:flutter/material.dart';
import 'package:jeudi23challenge/page/ChallengeSection9Ang.dart';
import 'package:jeudi23challenge/page/Section17PageQuiz.dart';
import 'package:jeudi23challenge/page/Section18Fran.dart';
import 'package:jeudi23challenge/page/challengeSection10Ang.dart';
import 'package:jeudi23challenge/page/challengeSection7Ang.dart';
import 'package:jeudi23challenge/page/challengeSection8Ang.dart';
import 'package:jeudi23challenge/page/changerLaCouleurduBody.dart';
import 'package:jeudi23challenge/page/pianoVirtual.dart';
import 'package:jeudi23challenge/page/pop_up_and_nav.dart';
import 'package:jeudi23challenge/page/section14Fran.dart';
import 'package:jeudi23challenge/page/todoHomePage.dart';
import 'package:jeudi23challenge/screens/loadingScreen.dart';
import 'package:jeudi23challenge/section12Anglais/bmi_Calculator.dart';

import 'package:jeudi23challenge/pages/challengeInscription.dart';
import 'package:jeudi23challenge/pages/changerThemePage.dart';
import 'package:jeudi23challenge/pages/exoSection10.dart';
import 'package:jeudi23challenge/pages/pageExoDuLundi27Fevrier.dart';
import 'package:jeudi23challenge/pages/section10Exo.dart';
import 'package:jeudi23challenge/section19/section19Page.dart';
import 'package:jeudi23challenge/section20/section21a.dart';
import 'package:jeudi23challenge/section21/controlleur/home_Controller.dart';
import 'package:jeudi23challenge/section21/section21Rss.dart';
import 'package:jeudi23challenge/section22/section22.dart';
import 'package:jeudi23challenge/section24/section24.dart';
import 'package:jeudi23challenge/section25/Section25.dart';

import 'Section23AG/section23ch.dart';
import 'chalengesection25/challengeSection25.dart';
import 'dosierListe2Fourniure/fourniture.dart';

class Nafo extends StatefulWidget {
  const Nafo({super.key});

  @override
  State<Nafo> createState() => _NafoState();
}

class _NafoState extends State<Nafo> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: new ListView(
        children: [
          //hearder
          new UserAccountsDrawerHeader(
            accountName: Text("Franck Obité"),
            accountEmail: Text("obitefrank@gmail.com"),
            currentAccountPicture: new CircleAvatar(
              //backgroundColor: Colors.grey,
              foregroundImage: AssetImage("images/moi.png"),

              child: Icon(Icons.person, color: Colors.white),
            ),
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 4, 123, 111)),
          ),

          /* MafonctionMia(
              ttext: "hhh",
              colorr: Colors.brown,
              iconn: Icons.person,
              lienPage: Manchin(),
            ), */

          //body
          iconnn(
              ttexx: "challenge exo section 10 francais",
              iconn: Icons.facebook_rounded,
              page: MonApp()),
          iconnn(
              ttexx: "challenge du lundi27 fevrier",
              iconn: Icons.run_circle,
              page: const chalengeLudi27Complet()),
          iconnn(
              ttexx: "Challenge section 7 Ang(Dicee)",
              iconn: Icons.devices_other,
              page: DicePage()),
          iconnn(
              ttexx: "Challenge section 8 Ang(Ball))",
              iconn: Icons.sports_football,
              page: ChallengeSection8Ang()),
          iconnn(
              ttexx: "ToDo App",
              iconn: Icons.list_alt_outlined,
              page: TodoListApp()),

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
                                    leading:
                                        Icon(Icons.sunny, color: Colors.red),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                HomeScreen()));
                                  },
                                  child: ListTile(
                                    title: new Text("Challenge body Color"),
                                    leading: Icon(
                                      Icons.colorize,
                                      color: Colors.red,
                                    ),
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
          iconnn(
              ttexx: "Challenge Section 9 xylophone",
              iconn: Icons.music_note,
              page: XylophoneApp()),
          iconnn(
              ttexx: "Autres challenges", iconn: Icons.settings, page: S10()),
          iconnn(
              ttexx: "Section 14", iconn: Icons.photo, page: ImagePickerApp()),

          iconnn(
              ttexx: "Mon Piano demo",
              iconn: Icons.piano,
              page: MonPianoVirtuel()),
          iconnn(
              ttexx: "Section 16 Fran",
              iconn: Icons.note,
              page: Section16Francaise()),
          iconnn(
              ttexx: "Section 17 Challenge", iconn: Icons.quiz, page: Quiz()),
          iconnn(
              ttexx: 'Section 18',
              iconn: Icons.ios_share,
              page: DemoCupertino()),

          iconnn(
              ttexx: "Challenge Section 10",
              iconn: Icons.add_task,
              page: Quizzler()),
          iconnn(
              ttexx: "section 19", iconn: Icons.list, page: FournitureListe()),
          iconnn(
              ttexx: "section 19 b",
              iconn: Icons.list_alt,
              page: Section19Page()),
          iconnn(
              ttexx: "Challenge section 20",
              iconn: Icons.grid_3x3,
              page: ChallengeSection21()),
          iconnn(ttexx: "Section 21", iconn: Icons.http, page: Section21()),
          iconnn(
              ttexx: "Section 22a",
              iconn: Icons.info,
              page: HomePageChallenge22()),
          iconnn(
              ttexx: "Section 23",
              iconn: Icons.video_call,
              page: Section23Challenge()),
          iconnn(ttexx: "Section 24", iconn: Icons.draw, page: Section24()),
          iconnn(
              ttexx: "Challenge Section 25",
              iconn: Icons.home_filled,
              page: Section25()),
          iconnn(
              ttexx: "debatChallenge",
              iconn: Icons.speaker,
              page: Challenge25()),
          iconnn(
              ttexx: 'Challenge section 12',
              iconn: Icons.calculate,
              page: InputPage()),
          iconnn(
              ttexx: "Section 13 Anglaise",
              iconn: Icons.nat,
              page: LoadingScreen()),
          iconnn(
              ttexx: "Page de Connexion",
              iconn: Icons.login,
              page: MonInscriptionApp()),
        ],
      ),
    );
  }

  InkWell iconnn(
      {required String ttexx,
      required IconData iconn,
      required final Widget page}) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => page)));
      },
      child: ListTile(
        title: Text(ttexx),
        leading: Icon(iconn, color: Colors.red),
      ),
    );
  }
}
