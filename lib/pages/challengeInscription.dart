import 'package:flutter/material.dart';

class MonInscriptionApp extends StatefulWidget {
  MonInscriptionApp({super.key});

  @override
  State<MonInscriptionApp> createState() => _MonInscriptionAppState();
}

class _MonInscriptionAppState extends State<MonInscriptionApp> {
  bool obscur = true;
  IconData icoo = Icons.visibility_off;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text(
          "App Connexion",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(children: [
                Text('IDENTIFICATION',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    )),
                SizedBox(height: 30),
                TextFormField(
                  obscureText: false,
                  decoration: InputDecoration(
                      hintText: 'Entrer votre nom',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25))),
                ),
                SizedBox(height: 30),
                TextField(
                  obscureText: obscur,
                  decoration: InputDecoration(
                      hintText: '   Mots de Pass',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: setIcon,
                        icon: Icon(icoo),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25))),
                ),
                SizedBox(height: 30),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.login),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Connexion", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }

  setIcon() {
    setState(() {
      icoo = (icoo == Icons.visibility_off)
          ? Icons.visibility
          : Icons.visibility_off;
      obscur = !obscur;
    });
  }
}
