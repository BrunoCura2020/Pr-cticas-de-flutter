import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/screens/my_home_page.dart';
import 'package:flutter_application_1/src/screens/second.dart';

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      //route: todas las rutas
      routes: {
        '/': (BuildContext context) => MyHomePage(),
        '/second': (BuildContext context) => SecondPage(),
      },
    );
  }
}
