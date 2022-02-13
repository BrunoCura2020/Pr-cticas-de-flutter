import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/screens/home_page.dart';
import 'package:flutter_application_1/src/screens/login_page.dart';
import 'package:flutter_application_1/src/screens/register_page.dart';
import 'package:flutter_modulo1_fake_backend/user.dart';

import 'connection/server_controller.dart';

ServerController _serverController = ServerController();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (BuildContext context) {
            switch (settings.name) {
              case '/':
                return LoginPage(_serverController, context);
              case '/home':
                User? userLogged = settings.arguments as User?;
                return HomePage(userLogged!);
              case '/register':
                return RegisterPage(_serverController, context);
              default:
                return LoginPage(_serverController, context);
            }
          },
        );
      },
    );
  }
}
