import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImagePickerApp extends StatefulWidget {
  const ImagePickerApp({super.key});

  @override
  State<ImagePickerApp> createState() => _ImagePickerAppState();
}

class _ImagePickerAppState extends State<ImagePickerApp> {
  File? imageFile;

  ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Text("Image Picker Demo"), backgroundColor: Colors.orange),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                (imageFile == null)
                    ? Text('Aucune image')
                    : Image.file(imageFile!),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        pickImage(ImageSource.gallery);
                      },
                      child: Icon(Icons.photo_album),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        pickImage(ImageSource.camera);
                      },
                      child: Icon(Icons.camera),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  Future pickImage(ImageSource sources) async {
    PickedFile? chosenImage = await picker.getImage(
      source: sources,
      maxHeight: MediaQuery.of(context).size.height / 2,
      /* imageQuality: 1, */
      /*  preferredCameraDevice: CameraDevice.rear */
    );
    setState(() {
      if (chosenImage == null) {
        print("nous n'avons pas pu récupérer d'image");
      } else {
        imageFile = File(chosenImage.path);
      }
    });
  }
}
