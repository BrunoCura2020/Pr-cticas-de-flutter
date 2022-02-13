//Primero paquetes de dart y luego paquetes de terceros
import 'package:counter_app/screens/counter_screen.dart';
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() => runApp(const MyApp());

//Lo debemos de extender de algun state para que 'MyApp' sea un widget y no una clase
class MyApp extends StatelessWidget {
  //Constructor
  const MyApp({Key? key}) : super(key: key);

  @override
  //Ponemos primero el Widget porque le estamos diciendo que nos tiene que regresar un Widget
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}
