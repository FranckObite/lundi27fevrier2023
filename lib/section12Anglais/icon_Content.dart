import 'package:flutter/material.dart';

import 'Constants.dart';

class CardChild extends StatelessWidget {
  const CardChild({
    super.key,
    required this.leText,
    required this.licone,
  });
  final String leText;
  final IconData licone;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          licone,
          size: 80,
        ),
        SizedBox(height: 15.0),
        Text("$leText", style: KLabelStyle)
      ],
    );
  }
}
