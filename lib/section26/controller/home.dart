import 'package:flutter/material.dart';

import '../model/raw_model/bar_choice.dart';
import '../view/music_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  List<BarChoice> items = [
    BarChoice(
      iconData: Icons.music_note,
      label: "Musique",
      page: MusicView(),
    ),
    BarChoice(iconData: Icons.whatshot, label: "Favoris", page: Container()),
    BarChoice(iconData: Icons.search, label: "Recherche", page: Container()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Spacer(),
                    Icon(Icons.radio),
                    Icon(Icons.doorbell),
                    Icon(Icons.settings)
                  ],
                ),
                items[currentIndex].titleForAppBar
              ],
            ),
          ),
        ),
      ),
      body: items[currentIndex].page,
      bottomNavigationBar: BottomNavigationBar(
          items: items.map((i) => i.item).toList(),
          currentIndex: currentIndex,
          onTap: barTapped),
    );
  }

  barTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
