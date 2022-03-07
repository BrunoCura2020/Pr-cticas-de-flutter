import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/home_page.dart';
import 'package:flutter_application_1/src/providers/heroes_info.dart';
import 'package:flutter_application_1/src/providers/villanos_info.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  //-------------OPCIÓN 1-----------------
  /* @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => HeroesInfo(),
      child: MaterialApp(
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          'home': (context) => HomePage(),
        },
      ),
    );
  } */
  //-------OPCIÓN 2(USAR MULTIPROVIDER ES RECOMENDABLE, PARA TENER MÁS DE UN PROVIDER)--------
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        //CREA UN PROVIDER
        ChangeNotifierProvider(
          create: (BuildContext context) => HeroesInfo(),
        ),
        //CREA OTRO PROVIDER
        ChangeNotifierProvider(
          create: (BuildContext context) => VillanosInfo(),
        ),
      ],
      child: MaterialApp(
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          'home': (context) => HomePage(),
        },
      ),
    );
  }
}
