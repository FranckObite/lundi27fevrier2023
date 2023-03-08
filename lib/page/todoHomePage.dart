import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:jeudi23challenge/Util/dialog_box.dart';
import 'package:jeudi23challenge/Util/todo_tile.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:jeudi23challenge/data/database.dart';
import 'package:jeudi23challenge/ludi27.dart';

/* import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_generator/hive_generator.dart';
import 'package:build_runner/build_runner.dart';
 */
class TodoListApp extends StatefulWidget {
  @override
  State<TodoListApp> createState() => _TodoListAppState();
}

class _TodoListAppState extends State<TodoListApp> {
  //referencement de la hive box
  final _myBox = Hive.box('myBox');
  ToDoDataBase db = ToDoDataBase();

  @override
  void initState() {
    //si  c'est la premiere ouverture de l'app, on crè cette data par defaut
    if (_myBox.get("TODOLIST") == null &&
        _myBox.get("DESCRIPTIONLIST") == null) {
      db.createInitialeData();
    } else {
      //cela exit deja
      db.loadData();
    }
    super.initState();
  }
  //creation du controleur

  final _controller = TextEditingController();
  final _controller2 = TextEditingController();

  //list de la TODO APP

  /* List toDolist = [

    [
      "Causerie débat",
      false,
    ],
    ["Live Coding", false],
    [" Challenge Algo Dart", false],
  ];

  List descriptionList = [
    ["Description causerie débat"],
    ["Description live Coding"],
    ["Description challenge"]
  ];
 */
  //checkBoxChanged

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      db.toDolist[index][1] = !db.toDolist[index][1];
    });
    db.updateDataBase();
  }

  //enregistrement de la nouvelle chose à faire

  void saveNewTask() {
    setState(() {
      db.toDolist.add([_controller.text, false]);
      db.descriptionList.add([_controller2.text]);
      _controller2.clear();
      _controller.clear();
    });
    Navigator.of(context).pop();
    db.updateDataBase();
  }

  //création d'une nouvelle chose à faire

  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            contoller2: _controller2,
            controller: _controller,
            onCancel: () => Navigator.of(context).pop(),
            onSave: saveNewTask,
          );
        });
  }

  //creation de la fonction permettant la supression d'une to do

  void deleteTask(int index) {
    setState(() {
      db.toDolist.removeAt(index);
      db.descriptionList.removeAt(index);
    });
    db.updateDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 1, 18, 49),
        appBar: AppBar(
          title: Text(
            "Mon App Todo",
          ),
          backgroundColor: Colors.blueAccent,
        ),
        endDrawer: Drawer(
          child: ListView(
            children: [
              Container(
                height: 200,
                child: image_carousel,
              ),
              SizedBox(height: 40.0),
              Text(" Programme Complet",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 40.0),
              monInkwell(Icons.calendar_month, "Première Semaine"),
              monInkwell(Icons.calendar_month, "Deuxième Semaine"),
              monInkwell(Icons.calendar_today, "Troisième Semaine"),
              monInkwell(Icons.calendar_today, "Quatrième Semaine"),

              /* InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(" Première Semaine"),
                  leading: Icon(
                    Icons.calendar_month,
                    color: Color.fromARGB(255, 1, 18, 49),
                  ),
                ),
              ) */
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: createNewTask,
          child: Icon(Icons.add),
        ),
        body: ListView.builder(
          itemCount: db.toDolist.length,
          itemBuilder: (context, index) {
            return SingleChildScrollView(
              child: ToDoTile(
                numeroTache:
                    (db.toDolist.indexOf(db.toDolist[index]) + 1).toString(),
                taskName: db.toDolist[index][0],
                taskCompletd: db.toDolist[index][1],
                Description: db.descriptionList[index][0],
                onChanged: (value) => checkBoxChanged(value, index),
                deleteFunction: (contex) => deleteTask(index),
              ),
            );
          },

          /* ToDoTile(
                taskName: "Causerie Débat",
                taskCompletd: true,
                onChanged: (p0) {}),
                ToDoTile(
                taskName: " Live Coding",
                taskCompletd: false,
                onChanged: (p0) {}),
                ToDoTile(
                taskName: " Challenge algo",
                taskCompletd: true,
                onChanged: (p0) {}) */
        ));
  }

  /* fontion(int nbBoucle) {
    return;

    for (var i = 0; i <= nbBoucle; i++) {
      (db.toDolist.length - (db.toDolist.length - i));

      ;
    }
    ;
  } */

  Widget image_carousel = new Container(
    height: 300.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage("images/app.jpeg"),
        AssetImage("images/cover.jpeg"),
        AssetImage("images/flutter.webp"),
        //AssetImage("images/ppp.webp")
      ],
      autoplay: true,
      //animationCurve: Curves.fastOutSlowIn,
      //animationDuration: Duration(milliseconds: 1000),
      dotSize: 4.0,
      dotColor: Colors.red,
      indicatorBgPadding: 2.0,

      dotBgColor: Colors.transparent,
    ),
  );

  InkWell monInkwell(
    IconData licone,
    String leText,
  ) {
    return InkWell(
      onTap: () {
        //Navigator.push(context, MaterialPageRoute(builder: (context) => pop() ) );
      },
      child: ListTile(
        title: Text(leText),
        leading: Icon(
          licone,
          color: Color.fromARGB(255, 1, 18, 49),
        ),
      ),
    );
  }
}
