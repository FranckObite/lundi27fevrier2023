import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  //reference the box

  List toDolist = [];
  List descriptionList = [];

  final _myBox = Hive.box('myBox');

  //executer cette methodes pour la premiere ouverture de mon app
  void createInitialeData() {
    
    List toDolist = [
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
  }

  //lancement les donnnées dans la base de données

  void loadData() {

    toDolist = _myBox.get("TODOLIST");
    descriptionList = _myBox.get("DESCRIPTIONLIST");
  }

  //mise à jour de la bd
  void updateDataBase() {

    _myBox.put("TODOLIST", toDolist);
    _myBox.put("DESCRIPTIONLIST", descriptionList);
  }
}
