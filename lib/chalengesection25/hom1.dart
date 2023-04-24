import 'package:flutter/material.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.exit_to_app)),
            Text("Profil")
          ]),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height / 2,
            color: Colors.black,
            child: Card(
              elevation: 6,
              child: colunmm(
                lenom: 'Obité Franck', matricul: '#NAN_6.23-OTZOPY', num: '055 602 869 2', speciality: 'Student FLUTTER ',
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class colunmm extends StatelessWidget {
  const colunmm({
    super.key,
    required this.lenom,
    required this.matricul,
    required this.num,
    required this.speciality,
  });
  final String lenom;
  final String matricul;
  final String num;
  final String speciality;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.deepPurple,
          child: Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "$lenom",
          style: TextStyle(fontSize: 30),
        ),
        SizedBox(
          height: 30,
        ),
        marow(nom: Icons.card_travel, autres: "$matricul"),
        SizedBox(
          height: 30,
        ),
        marow(nom: Icons.phone, autres: "$num"),
        SizedBox(
          height: 30,
        ),
        marow(nom: Icons.school, autres: "$speciality")
      ],
    );
  }
}

class marow extends StatelessWidget {
  const marow({
    super.key,
    required this.nom,
    required this.autres,
  });
  final IconData nom;
  final String autres;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 70.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(nom),
          Text(" $autres"),
        ],
      ),
    );
  }
}
