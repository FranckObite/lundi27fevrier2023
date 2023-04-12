import 'package:flutter/material.dart';

class Section19Page extends StatefulWidget {
  const Section19Page({super.key});

  @override
  State<Section19Page> createState() => _Section19PageState();
}

class _Section19PageState extends State<Section19Page> {
  @override
  initState() {
    super.initState();
    maListeDeCourses = ListeDeCourse();
  }

  bool lebool = true;

  List<String> coures = [
    "Carottes",
    "Tomates",
    "Cerise",
    "Mangue",
    "Produit vaiselle",
    "Soda",
    "Nutella",
    "viande",
    "Poisson",
    "Papier toilette",
    "Liquide pour lave linge",
    "Chlore pour la piscine",
    "Sauce pour la salade",
    "Huile d'olive",
    "Dentifrice",
    "Brosse à dent",
    "Pain",
  ];

  List<Course> maListeDeCourses = [];

  List<Course> ListeDeCourse() {
    List<Course> c = [];
    coures.forEach((element) {
      c.add(Course(element));
    });
    return c;
  }

  List<Widget> itemCouses() {
    List<Widget> items = [];
    coures.forEach((element) {
      final Widget = elementToShow(element);
      items.add(widget);
    });
    return items;
  }

  Widget elementToShow(String element) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(element), Icon(Icons.check_box_outline_blank)],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    print(orientation);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text("liste et grilles"),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.light),
                Text((orientation == Orientation.portrait)
                    ? "Vous êtes en mode listView"
                    : " Vous êtes en mode GridView"),

                /* Switch(
                    value: lebool,
                    onChanged: (newValue) {
                      setState(() {
                        lebool = !lebool;
                      });
                    }) */
              ],
            )
          ],
        ),
        body: (orientation == Orientation.portrait)
            ? listViewExplication()
            : GridViewExemple(),

        /* listViewExplication() */ /* ListView.builder(itemCount: coures.length,
            itemBuilder: (BuildContext contex, int index) {
            final element = coures[index];
            return elementToShow(element);
          }) */
        /*  SingleChildScrollView(child: Column(children: itemCouses())) */
      ),
    );
  }

  GridView GridViewExemple() {
    return GridView.builder(
        itemCount: maListeDeCourses.length,
        gridDelegate: /* SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 
              MediaQuery.of(context).size.width/4,
            ) */
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              setState(() {
                maListeDeCourses[index].update();
              });
            },
            child: Card(
                color: (maListeDeCourses[index].bougth)
                    ? Colors.green
                    : Colors.redAccent,
                child: Center(child: Text(maListeDeCourses[index].element))),
          );
        });
  }

  ListView listViewExplication() {
    return ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            direction: DismissDirection.endToStart,
            key: Key(maListeDeCourses[index].element),
            child: tile(index),
            onDismissed: (direction) {
              print(direction);
              setState(() {
                maListeDeCourses.removeAt(index);
              });
            },
            background: Container(
              padding: EdgeInsets.only(right: 8),
              color: Colors.redAccent,
              child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [Spacer(), Text("Swipe pour supprimer")]),
            ),
          );

          /* elementToShow(coures[index]); */
        },
        separatorBuilder: (BuildContext context, int idex) {
          return Divider(color: Colors.indigoAccent, thickness: 1);
        },
        itemCount: maListeDeCourses.length);
  }

  ListTile tile(int index) {
    return ListTile(
        title: Text(coures[index]),
        tileColor: Colors.indigoAccent[100],
        leading: Text(index.toString()),
        trailing: IconButton(
          onPressed: () {
            setState(() {
              maListeDeCourses[index].update();
            });
          },
          icon: Icon((maListeDeCourses[index].bougth)
              ? Icons.check_box
              : Icons.check_box_outline_blank),
        ),
        onTap: () {
          print(
              "J'ai appuyé sur l'élément $index qui correspond à ${coures[index]}");
        });
  }
}

class Course {
  String element;
  bool bougth = false;
  Course(this.element);

  update() {
    bougth = !bougth;
  }
}
