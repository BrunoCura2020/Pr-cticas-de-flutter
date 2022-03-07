import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker'),
      ),
      body: Center(
        //agrego la imagen en el centro
        child: getImageWidget(),
      ),
      //Un boton que me dara dos opciones al darle click
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _showOptions(context),
      ),
    );
  }

  //Creo una funcion donde:
  //Si la imagen en null tendra el texto pero y si no, me dara una imagen en el body/child
  Widget getImageWidget() {
    if (_image == null) {
      return Text('Seleccione una imagen');
    } else {
      return Image.file(_image!);
    }
  }

//Para que funcione se necesita importar la libreria dart:io
//File _image: guardara la imagen

  File? _image;

  void getImage(ImageSource source) async {
    var image = await ImagePicker.platform.pickImage(source: source);

    //uso setState para que me actualice la pantalla
    setState(() {
      _image = File(image!.path);
    });
  }

  void _showOptions(BuildContext context) {
    //Creo las dos opciones: camara y galeria
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          children: <Widget>[
            ListTile(
              title: Text('Cámara'),
              leading: Icon(Icons.camera_alt),
              onTap: () {
                Navigator.pop(context);
                getImage(ImageSource.camera);
              },
            ),
            ListTile(
              title: Text('Galeria'),
              leading: Icon(Icons.camera_alt),
              onTap: () {
                Navigator.pop(context);
                getImage(ImageSource.gallery);
              },
            ),
          ],
        );
      },
    );
  }
}
