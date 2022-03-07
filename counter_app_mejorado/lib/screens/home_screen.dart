import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  //Super: llama al constructor del widget stateless
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //creamos una variable que contenga el estilo
    const fontSize30 = TextStyle(fontSize: 30);
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('HomeScreen'),
        ),
        //elevation: sombreado;
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: alinea los hijos de forma relativa al widget más grande
          crossAxisAlignment: CrossAxisAlignment.center,
          //<Widget>: es un generico eso quiere decir que todo lo que esta adentro tiene que ser un generico
          children: const <Widget>[
            Text(
              'Número de click',
              style: fontSize30,
            ),
            Text('0', style: fontSize30),
          ],
        ),
      ),
      //floatingActionButtonLocation: posicionar mi botón
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          print('Hola Mundo');
        },
      ),
    );
  }
}
