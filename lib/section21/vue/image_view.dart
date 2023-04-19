import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: (imageUrl== "")? Container() : Image.network(
        imageUrl,
        fit: BoxFit.cover,
        height: MediaQuery.of(context).size.height / 3,
      ),
    );
  }
}
