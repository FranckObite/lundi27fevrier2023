import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color background = Colors.black;
  Color textColor = Colors.white;
  Color couleurIcon = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        title: Text("Challenge background "),
      ),
      body: Center(
          child: Text(
        ' Flutter, le Meilleure',
        style: TextStyle(fontSize: 40, color: textColor),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: miseAjoursbacground,
        tooltip: "Chager la couleur du body",
        child: Icon(
          Icons.colorize,
        ),
        backgroundColor: couleurIcon,
      ),
    );
  }

  miseAjoursbacground() {
    setState(() {
      background = (background == Colors.black) ? Colors.white : Colors.black;
      textColor = (textColor == Colors.white) ? Colors.black : Colors.white;
      couleurIcon = (couleurIcon == Colors.blue) ? Colors.orange : Colors.blue;
    });
  }
}
