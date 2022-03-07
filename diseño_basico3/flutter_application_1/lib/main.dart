import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:flutter_application_1/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //Cambia el color de la hora y otros elementos del celular
    //SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Material App Bar',
      initialRoute: 'home_screen',
      routes: {
        'home_screen': (_) => const HomeScreen(),
      },
    );
  }
}
