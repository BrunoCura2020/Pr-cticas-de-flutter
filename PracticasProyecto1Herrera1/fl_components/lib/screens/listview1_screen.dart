import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const [
    'Herramientas',
    'Nuevo grupo',
    'Nueva difusion',
    'Etiquetas',
  ];
  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 1'),
      ),
      body: ListView(
        children: <Widget>[
          //...options.map((op) => Text('Hola Mundo')).toList()
          ...options.map(
            (op) => ListTile(
              title: Text(op),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            ),
          ),
        ],
      ),
    );
  }
}
