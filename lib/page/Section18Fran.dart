import 'dart:io';

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
    //final platforme = Theme.of(context).platform;
    //for text
    final platforme = TargetPlatform.iOS;
    String montrerLaplateForme = platforme.toString();
    bool isOs = (platforme == TargetPlatform.iOS);
    return isOs
        ? IOSBase(platform: platforme)
        : androidBase(
            platform:
                platforme); /* Scaffold(
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

  CupertinoApp IOSBase({required TargetPlatform platform}) {
    return CupertinoApp(
        theme: CupertinoThemeData(primaryColor: Colors.red),
        title: "learn Cupertino",
        home: CupertinoPageScaffold(
          child: AdaptivePage(platform: platform),
        ));
  }

  MaterialApp androidBase({required TargetPlatform platform}) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.red),
        title: "learn Cupertino",
        home: AdaptivePage(
          platform: platform,
        ));
  }
}
