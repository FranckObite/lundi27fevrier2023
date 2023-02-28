import 'package:flutter/material.dart';

class monIconnn extends StatefulWidget {
  const monIconnn({super.key});

  @override
  State<monIconnn> createState() => _monIconnnState();
}

class _monIconnnState extends State<monIconnn> {
  Color _color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 30,
      width: 30,
      child: GestureDetector(
        child: Icon(Icons.edit, color: _color),
        onTap: () {
          setState(() {
            _color == Colors.green
                ? _color = Colors.black
                : _color = Colors.green;
          });
        },
      ),
    );
  }
}
