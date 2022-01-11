import 'dart:io';

import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({
    Key? key,
    /* this.name = 'nul' */
  }) : super(key: key);

  //final String name;

  @override
  Widget build(BuildContext context) {
    SecondPageArguments? arguments =
        ModalRoute.of(context)!.settings.arguments as SecondPageArguments?;

    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Pantalla'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(arguments!.name.toString()),
            Text(arguments.lastName.toString()),
          ],
        ),
      ),
    );
  }
}

class SecondPageArguments {
  String? name;
  String? lastName;
  SecondPageArguments({this.name, this.lastName});
}
