import 'package:flutter/material.dart';
import 'my_home2.dart';
import 'my_home_page.dart';
import 'second_page.dart';
import 'tipos_teclados.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext Context) {
    return MaterialApp(
        //dar una direccion de ruta a la segunda pantalla
        initialRoute: '/',
        routes: {
          '/': (BuildContext context) => TiposTeclados(),
          '/second': (BuildContext context) => SecondPage()
        });
  }
}
