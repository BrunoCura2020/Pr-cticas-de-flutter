import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/connection/server_controller.dart';
import 'package:flutter_application_1/src/screens/home_page.dart';
import 'package:flutter_application_1/src/screens/login_page.dart';
//import 'package:flutter_modulo1_fake_backend/user.dart';
import 'connection/server_controller.dart';

//ServerController _serverController = ServerController();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.cyan,
            accentColor: Colors.cyan[300]),
        routes: {
          '/': (BuildContext context) => LoginPage(),
        }
        //onGenerateRoute: (RouteSettings settings) {
        /* return MaterialPageRoute(
          builder: (BuildContext context) {
            switch (settings.name) {
              case '/':
                return LoginPage(_serverController, context);
              case '/home':
                User userLogged = settings.arguments as User;
                return HomePage(userLogged);
            }
            return LoginPage(_serverController, context);
          },
        );
      },*/
        );
  }
}
