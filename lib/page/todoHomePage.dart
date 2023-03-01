import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TodoListApp extends StatefulWidget {
  @override
  State<TodoListApp> createState() => _TodoListAppState();
}

class _TodoListAppState extends State<TodoListApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 18, 49),
      appBar: AppBar(
        title: Text("Mon App Todo"),
        leading: Icon(Icons.fork_right_outlined),
        actions: [Icon(Icons.arrow_drop_down_sharp)],
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
