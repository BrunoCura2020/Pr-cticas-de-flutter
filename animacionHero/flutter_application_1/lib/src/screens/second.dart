import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String? url = ModalRoute.of(context)!.settings.arguments as String?;
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero'),
      ),
      body: Center(
        //Hero es la animación que nos va a permitir visualizar cierta imagen en otra pantalla al hacerle click
        //Ejemplo: haces click de un producto y te lleva a otra pantalla donde visualizaras más información y detalles.
        child: Hero(
          tag: url!,
          child: Image.network(url),
        ),
      ),
    );
  }
}
