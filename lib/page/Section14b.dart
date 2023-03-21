import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ImagePickerb extends StatefulWidget {
  const ImagePickerb({super.key});

  @override
  State<ImagePickerb> createState() => _ImagePickerbState();
}

class _ImagePickerbState extends State<ImagePickerb> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              FloatingActionButton(onPressed: (){},
              child:  Icon(Icons.photo_album),)
            ],
          ),

        ),
      ),
    );
  }
}