import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/basic_desing.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'basic_desing',
      routes: {
        'basic_desing': (_) => BasicDesingScreen(),
      },
    );
  }
}
