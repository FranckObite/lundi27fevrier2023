import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptivePage extends StatefulWidget {
   AdaptivePage({super.key, required this.platform, });

  final TargetPlatform platform;
 

  @override
  State<AdaptivePage> createState() => _AdaptivePageState();
}

class _AdaptivePageState extends State<AdaptivePage> {
  bool loveFlutter = true;
  @override
  Widget build(BuildContext context) {
    final platform = Theme.of(context).platform;
    final isIOS = (platform == TargetPlatform.iOS);
    return scaffold(isIOS);
  }

  Widget scaffold(bool IOS) {
    return (IOS)
        ? CupertinoPageScaffold(navigationBar: navBar(), child: body())
        : Scaffold(
            appBar: appBar(),
            body: body(),
          );
  }

  AppBar appBar() {
    return AppBar(title: Text('Notre design Sous Android'));
  }

  CupertinoNavigationBar navBar() {
    return CupertinoNavigationBar(
      middle: Text('Notre design sous IOS'),
      backgroundColor: Colors.white,
    );
  }

  Widget body() {
    return Column(children: []);
  }
}
