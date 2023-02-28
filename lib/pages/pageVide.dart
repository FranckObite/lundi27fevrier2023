import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/src/widgets/framework.dart';

class Manchin extends StatefulWidget {
  const Manchin({super.key});

  @override
  State<Manchin> createState() => _ManchinState();
}

class _ManchinState extends State<Manchin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('manchinmanchin  😅😎😭'),
      ),
    );
  }
}
