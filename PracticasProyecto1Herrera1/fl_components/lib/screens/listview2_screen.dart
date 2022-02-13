import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    'Herramientas',
    'Nuevo grupo',
    'Nueva difusion',
    'Etiquetas',
  ];
  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 2'),
      ),
      body: ListView.separated(
        itemCount:
            options.length, //la cantidad de elementos que tengo en la lista
        //Va a construir los elementos y necesita dos parametros: context: context nos dara la info del widget, index la posicion de los elementos
        itemBuilder: (context, index) => ListTile(
          trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigo),
          title: Text((options[index])),
          onTap: () {
            final op = options[index];
            print(op);
          },
        ),
        //para hacer la sepración por cada recorrido
        separatorBuilder: (_, __) => const Divider(),
        //ListView.builder: es lo mismo pero no tiene sepación
      ),
    );
  }
}
