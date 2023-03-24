import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jeudi23challenge/page/adaptivePage.dart';

import 'android_page.dart';
import 'ios_page.dart';

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
    bool isOs = (platforme == TargetPlatform.iOS);
    return isOs
        ? IOSBase()
        : androidBase(); /* Scaffold(
            appBar: AppBar(
              title: Text("Demo Cupertino"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('$montrerLaplateForme')],
              ),
            )) */
  }

  CupertinoApp IOSBase({required Tar}) {
    return CupertinoApp(
      theme: CupertinoThemeData(primaryColor: Colors.red),
      title: "learn Cupertino",
      home: AdaptivePage(platform: null,),
    );
  }

  MaterialApp androidBase() {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      title: "learn Cupertino",
      home: AdaptivePage(),
    );
  }
}
