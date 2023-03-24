import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jeudi23challenge/page/android_page.dart';

class IOSPage extends StatefulWidget {
  const IOSPage({super.key});

  @override
  State<IOSPage> createState() => _IOSPageState();
}

class _IOSPageState extends State<IOSPage> {
  bool loveIt = true;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Colors.red,
        //leading: Text(''),
        middle: Text('Design sous IOS'),
        leading: Icon(Icons.source),
      ),
      child: Column(
        /* mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max, */
        children: [
          CupertinoButton(
              color: Colors.lightBlueAccent,
              child: Text((loveIt) ? " I Love Flutter " : "PHP is my Favorite"),
              onPressed: () {
                setState(() {
                  loveIt = !loveIt;
                });
              })
        ],
      ),
    );
  }
}
