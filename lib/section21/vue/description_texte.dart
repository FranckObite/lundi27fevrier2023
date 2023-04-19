import 'package:flutter/material.dart';

class DescriptionTextView extends StatelessWidget {
  const DescriptionTextView({super.key, required this.description});
  final String description;
  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: TextStyle(color: Colors.black),
    );
  }
}
