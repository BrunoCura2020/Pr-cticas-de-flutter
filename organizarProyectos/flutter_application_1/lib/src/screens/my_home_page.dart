import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Uso basico del navigator!'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Mostrar segunda pantalla'),
            onPressed: () {
              //El parametro context nos permite saber en que punto del arbol de widget estamos
              _showSencondPage(context);
            }),
      ),
    );
  }

  void _showSencondPage(BuildContext context) {
    //FORMA MÁS CORTA DE HACER LA NAVEGACIÓN
    /*  Navigator.of(context).pushNamed('/second',
        arguments: SecondPageArguments(name: 'Bruno', lastName: 'Cura')); */
  }
}
