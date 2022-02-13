import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

typedef OnImageSelected = Function(PickedFile imageFile);

class ImagePickerWidget extends StatelessWidget {
  final File imageFile;
  final OnImageSelected onImageSelected;

  ImagePickerWidget({required this.imageFile, required this.onImageSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 320,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.cyan[300]!,
              Colors.cyan[800]!,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          image: imageFile != null
              ? DecorationImage(
                  image: FileImage(imageFile),
                  //fit: BoxFit.cover_ cubre toda el espacio disponible
                  fit: BoxFit.cover,
                )
              : null,
        ),
        child: IconButton(
          icon: Icon(Icons.camera_alt),
          onPressed: () {
            _showPickerOptions(context);
          },
          iconSize: 90,
          color: Colors.white,
        ));
  }

  void _showPickerOptions(BuildContext context) {
    //Creo las dos opciones: camara y galeria
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          children: <Widget>[
            ListTile(
              title: const Text('Cámara'),
              leading: Icon(Icons.camera_alt),
              onTap: () {
                Navigator.pop(context);
                _showPickImage(context, ImageSource.camera);
              },
            ),
            ListTile(
              title: Text('Galeria'),
              leading: Icon(Icons.camera_alt),
              onTap: () {
                Navigator.pop(context);
                _showPickImage(context, ImageSource.gallery);
              },
            ),
          ],
        );
      },
    );
  }

  void _showPickImage(BuildContext context, source) async {
    // ignore: invalid_use_of_visible_for_testing_member
    var image = await ImagePicker.platform.pickImage(source: source) as PickedFile;
    this.onImageSelected(image);
  }
}
