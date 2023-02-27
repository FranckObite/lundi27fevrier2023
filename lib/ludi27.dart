import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          child: ListView(
            scrollDirection: axisDirectionToAxis(AxisDirection.right),
            children: [
              MesNombres(nombres1: "1"),
              MesNombres(nombres1: "2"),
              MesNombres(nombres1: "3")
            ],
          ),
        ),
        Container(
          height: 80,
          child: ListView(
            scrollDirection: axisDirectionToAxis(AxisDirection.right),
            children: [
              MesNombres(nombres1: "4"),
              MesNombres(nombres1: "5"),
              MesNombres(nombres1: "6")
            ],
          ),
        )
      ],
    );
  }
}

class MesNombres extends StatelessWidget {
  final String nombres1;

  const MesNombres({
    super.key,
    required this.nombres1,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        width: 30.0,
        child: ListTile(
          title: Text(
            nombres1,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
    ;
  }
}
