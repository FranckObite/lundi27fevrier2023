import 'package:flutter/material.dart';

class Section16Francaise extends StatefulWidget {
  const Section16Francaise({super.key});

  @override
  State<Section16Francaise> createState() => _Section16FrancaiseState();
}

class _Section16FrancaiseState extends State<Section16Francaise> {
  Color btnColor = Colors.green;
  Color AppBarColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Pop-Up Demo'),
        backgroundColor: AppBarColor,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              onPressed: () {
                ShowMyDialog(dialog: CreateAlert());
              },
              child: Text("Montrer une Alerte")),
          ElevatedButton(
              onPressed: () {
                ShowMyDialog(dialog: CreateSimple());
              },
              child: Text("Montrer Simple"))
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final snackBar = SnackBar(content: Text("Mon premier Snack"));
          ScaffoldMessenger.of(context)
              .showSnackBar(CreatSnack(text: "Snack Evolué"));
        },
        tooltip: '',
        child: const Icon(Icons.add),
        backgroundColor: btnColor,
      ),
    ));
  }

  SnackBar CreatSnack({required String text}) {
    final content = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [Icon(Icons.house), Text(text)],
    );
    final snack = SnackBar(
        content: content,
        action: SnackBarAction(
          label: 'Changer le btn',
          onPressed: () {
            btnColor = (btnColor == Colors.green) ? Colors.red : Colors.green;
          },
          textColor: Colors.red,
        ),
        backgroundColor: Colors.greenAccent,
        elevation: 8,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)));
    return snack;
  }

  AlertDialog CreateAlert() {
    return AlertDialog(
      title: Text('Ma premiere Alerte'),
      content: Text("J'ai creer ma premiere Alerte"),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Ok')),
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              setState(() {
                AppBarColor =
                    (AppBarColor == Colors.red) ? Colors.black : Colors.red;
              });
            },
            child: Text('Changer le AppBar')),
      ],
    );
  }

  Future<void> ShowMyDialog({required Widget dialog}) async {
    await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext ctx) {
          return dialog;
        });
  }

  SimpleDialog CreateSimple() {
    final simple = SimpleDialog(
      title: Text("Le Suis Un simple Dialog"),
      children: [
        Text('je suis une colonne'),
        Divider(),
        Text('Mais je suis dans un pop-up'),
        option()
      ],
      elevation: 15,
    );
    return simple;
  }

  SimpleDialogOption option() {
    return SimpleDialogOption(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: Text('retour'),
    );
  }
}
