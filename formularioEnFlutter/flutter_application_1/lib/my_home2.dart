import 'package:flutter/material.dart';
import 'second_page.dart';

class MyHomePage2 extends StatefulWidget {
  @override
  State<MyHomePage2> createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  String nameValue = ' ';
  String lastNameValue = ' ';

  //Uso controladores para que cuando me desplace en la pantalla no pierda los datos de los input
  TextEditingController nameController = TextEditingController(text: 'nombre');
  TextEditingController lastNameController = TextEditingController(text: 'apellido');

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
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Nombre: '),
                onSaved: (value) {
                  nameValue = value!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Llene este campo';
                  }
                },
              ),
              TextFormField(
                controller: lastNameController,
                decoration: InputDecoration(labelText: 'Apellido: '),
                onSaved: (value) {
                  lastNameValue = value!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Llene este campo';
                  }
                },
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
  @override
  void initState() {
    super.initState();
    //Creamos los controladores
    nameController = TextEditingController();
    lastNameController = TextEditingController();

    //destruye el widget para que no nos de error y ocupe memoria
    nameController.dispose();
    lastNameController.dispose();
  }
}

