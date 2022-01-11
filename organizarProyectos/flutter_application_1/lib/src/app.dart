//EN ESTA CARPETA SE DEFINE MATERIALAPP

import 'package:flutter/material.dart';
import 'screens/my_home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext Context) {
    return MaterialApp(
        //dar una direccion de ruta a la segunda pantalla
        initialRoute: '/',
        routes: {
          '/': (BuildContext context) => MyHomePage(),
        });
  }
}