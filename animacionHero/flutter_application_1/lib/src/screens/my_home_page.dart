import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero'),
      ),
      body: ListView.builder(
        //itemCount: 50: para que aparezca 50 imagenes
        itemCount: 50,
        itemBuilder: (context, index) {
          final url = 'https://picsum.photos/id/$index/410/300;
          //Card: nos da aspecto visual como una tarjeta
          //InkWell: especifica lo que tiene que suceder
          return InkWell(
            onTap: () =>
                Navigator.of(context).pushNamed('/second', arguments: url),
            //Hero es la animación que nos va a permitir visualizar cierta imagen en otra pantalla al hacerle click
            //Ejemplo: haces click de un producto y te lleva a otra pantalla donde visualizaras más información y detalles.
            //Se define un hero para ruta de destino y otra para el origen
            child: Hero(
              tag: url,
              child: Card(
                //Usamos el widget FadeInImage para que por medio de su propiedad "placeholder" podramos mostrar un spinner si tarda en cargar la img
                child: FadeInImage(
                  image: NetworkImage(url),
                  placeholder: AssetImage('assets/spinner.gif'),
                  height: 300,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
