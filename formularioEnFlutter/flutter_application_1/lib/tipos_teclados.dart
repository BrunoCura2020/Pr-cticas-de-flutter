import 'package:flutter/material.dart';
import 'second_page.dart';

class TiposTeclados extends StatefulWidget {
  @override
  State<TiposTeclados> createState() => _TiposTecladosState();
}

class _TiposTecladosState extends State<TiposTeclados> {
  String nameValue = ' ';
  String lastNameValue = ' ';

  //Uso controladores para que cuando me desplace en la pantalla no pierda los datos de los input
  TextEditingController nameController = TextEditingController(text: 'nombre');
  TextEditingController lastNameController =
      TextEditingController(text: 'apellido');

  //GlobalKey: tener acceso a elementos de modo global
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Uso basico del navigator!'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Nombre: '),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Apellido: '),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Número de celular: '),
                keyboardType: TextInputType.phone,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Correo electrónico: '),
                keyboardType: TextInputType.emailAddress,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Edad: '),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Sitio web: '),
                keyboardType: TextInputType.url,
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
      ),
    );
  }

  void _showSencondPage(BuildContext context) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
    }

    //FORMA MÁS CORTA DE HACER LA NAVEGACIÓN
    Navigator.of(context).pushNamed(
      '/second',
      arguments: SecondPageArguments(
          name: this.nameValue, lastName: this.lastNameValue),
    );
  }
}
