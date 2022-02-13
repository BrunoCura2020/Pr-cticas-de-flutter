import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/components/image_picker_widget.dart';
import 'package:flutter_application_1/src/connection/server_controller.dart';
import 'package:flutter_modulo1_fake_backend/user.dart';
import 'package:image_picker/image_picker.dart';

class RegisterPage extends StatefulWidget {
  ServerController serverController;
  BuildContext context;

  RegisterPage(this.serverController, this.context, {Key? key})
      : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _loading = false;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String userName = '';
  String password = '';

  String _errorMessage = '';
  File imageFile = File('');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Stack: nos permite apilar un widget sobre otro
      body: Form(
        key: _formKey,
        child: Stack(
          children: <Widget>[
            ImagePickerWidget(
                imageFile: this.imageFile,
                onImageSelected: (PickedFile file) {
                  setState(() {
                    this.imageFile = File(file.path);
                  });
                }),
            SizedBox(
              child: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
              ),
              height: kToolbarHeight + 25,
            ),
            Center(
              //SingleChildScrollView: para que nos permita deslizar el card para visualizar las opciones
              child: Card(
                elevation: 2,
                //shape: nos permite cambiar el borde de la card
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.only(
                    left: 20, right: 20, top: 260, bottom: 20),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                  child: Column(
                    //mainAxisSize: MainAxisSize.min: Para que el card no ocupe todo el espacio disponible
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Usuario:',
                          ),
                          onSaved: (value) {
                            userName = value!;
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Este campo es obligatorio';
                            }
                          }),
                      const SizedBox(height: 40),
                      TextFormField(
                          decoration:
                              const InputDecoration(labelText: 'Contraseña:'),
                          //obscureText: true: para ocultar el texto
                          obscureText: true,
                          onSaved: (value) {
                            password = value!;
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Este campo es obligatorio';
                            }
                          }),
                      const SizedBox(
                        height: 40,
                      ),
                      Theme(
                        data: Theme.of(context)
                            // ignore: deprecated_member_use
                            .copyWith(accentColor: Colors.white),
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          color: Theme.of(context).primaryColor,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          textColor: Colors.white,
                          onPressed: () => _login(context),
                          child: Row(
                            //Para que el texto se centre
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Iniciar sesión'),
                              //Si la variable _loading es verdadero, se ejecuta la instrucción
                              if (_loading)
                                // ignore: sized_box_for_whitespace
                                Container(
                                  height: 20,
                                  width: 20,
                                  margin: const EdgeInsets.only(left: 20),
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                      if (_errorMessage.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            _errorMessage,
                            style: const TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text('¿No estas registrado?'),
                          // ignore: deprecated_member_use
                          FlatButton(
                            textColor: Theme.of(context).primaryColor,
                            child: const Text('Registrarse'),
                            onPressed: () => _showRegister(context),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //Al hacer click en el botón el loading cambiara a true
  //si la variable _loading es falso, lo convertira a verdadero cuando se haga click en el boton
  void _login(BuildContext context) async {
    if (!_loading) {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
        setState(() {
          _loading = true;
          _errorMessage = '';
        });
        User user = await widget.serverController.login(userName, password);
        if (user != null) {
          Navigator.of(context).pushReplacementNamed('/home', arguments: user);
        } else {
          setState(() {
            _errorMessage = 'Usuario o contraseña incorrecta';
            _loading = false;
          });
        }
      }
    }
  }

  _showRegister(BuildContext context) {
    Navigator.of(context).pushNamed('/register');
  }

  @override
  void initState() {
    super.initState();
    widget.serverController.init(widget.context);
  }
}
