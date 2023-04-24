import 'package:flutter/material.dart';

class Section24 extends StatelessWidget {
  const Section24({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DrawerSection24(),
    );
  }
}

class DrawerSection24 extends StatefulWidget {
  const DrawerSection24({super.key});

  @override
  State<DrawerSection24> createState() => _DrawerSection24State();
}

class _DrawerSection24State extends State<DrawerSection24> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView.builder(
            itemCount: 9,
            itemBuilder: (context, index) {
              if (index == 0) {
                return DrawerHeader(
                    child: Center(
                        child: Icon(
                  Icons.car_rental,
                  size: 50,
                  color: Colors.orange,
                )));
              } else {
                return ListTile(
                  title: Text('Element ${index + 1}'),
                  onTap: () {
                    setState(() {
                      this.index = index + 1;
                      Navigator.pop(context);
                    });
                  },
                );
              }
            }),
      ),
      appBar: AppBar(
        title: Text("Apprendre le Drawer"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Text("Ici sera le drawer numero: $index"),
      ),
    );
  }
}
