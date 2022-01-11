import 'package:flutter/material.dart';
import 'my_home_page.dart';
import 'second_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext Context) {
    return MaterialApp(
        //dar una direccion de ruta a la segunda pantalla
        initialRoute: '/',
        routes: {
          '/': (BuildContext context) => MyHomePage(),
          '/second': (BuildContext context) => SecondPage()
        });
  }
}






//UNA FORMA DE CREAR RUTA PERO NO ES RECOMENDABLE
/* import 'package:flutter/material.dart';

import 'my_home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext Context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
 */