import 'package:flutter/material.dart';

class TitleTextView extends StatelessWidget {
  const TitleTextView({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Color.fromARGB(255, 3, 40, 124),
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}
