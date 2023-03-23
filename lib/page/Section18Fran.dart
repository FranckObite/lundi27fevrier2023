import 'package:flutter/material.dart';

class DemoCupertino extends StatefulWidget {
  const DemoCupertino({super.key});

  @override
  State<DemoCupertino> createState() => _DemoCupertinoState();
}

class _DemoCupertinoState extends State<DemoCupertino> {
  @override
  Widget build(BuildContext context) {
    final platforme = Theme.of(context).platform;
    String montrerLaplateForme = platforme.toString();
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Demo Cupertino"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('$montrerLaplateForme')],
              ),
            )));
  }
}
