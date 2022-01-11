import 'package:flutter/material.dart';
import 'second_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //LOS CONTROLADORES SIRVEN PARA MANEJAR CAMBIOS DE UN CAMPO DE TEXTO O RECUPERAR DATOS
  TextEditingController nameControladores = TextEditingController();

  TextEditingController lastNameControladores = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Uso basico del navigator!'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Nombre: '),
              //le pasamos los controladores
              controller: nameControladores,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Apellido: '),
              controller: lastNameControladores,
            ),
            RaisedButton(
                child: Text('Mostrar segunda pantalla'),
                onPressed: () {
                  //El parametro context nos permite saber en que punto del arbol de widget estamos
                  _showSencondPage(context);
                }),
          ],
        ),
      ),
    );
  }

  void _showSencondPage(BuildContext context) {
    //FORMA LARGA DE HACER LA NAVEGACIÓN
    /* final route = MaterialPageRoute(builder: (BuildContext context) {
      return SecondPage(
        name: 'Bruno',
      );
    });
    Navigator.of(context).push(route); */

    //FORMA MÁS CORTA DE HACER LA NAVEGACIÓN
    Navigator.of(context).pushNamed('/second',
        arguments: SecondPageArguments(
            name: nameControladores.text,
            lastName: lastNameControladores.text));
  }

  @override
  void initState() {
    super.initState();
    //Creamos los controladores
    nameControladores = TextEditingController();
    lastNameControladores = TextEditingController();

    //destruye el widget para que no nos de error y ocupe memoria
    nameControladores.dispose();
    lastNameControladores.dispose();
  }
}
