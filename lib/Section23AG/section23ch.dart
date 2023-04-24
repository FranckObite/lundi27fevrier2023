import 'package:flutter/material.dart';

import 'controller/list_controller.dart';

class Section23Challenge extends StatelessWidget {
  const Section23Challenge({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListController(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
