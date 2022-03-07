import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/screens/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Camara en flutter',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => MyHomePage(),
      },
    );
  }
}
