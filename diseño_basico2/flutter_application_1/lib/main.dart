import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/basic_desing.dart';
import 'package:flutter_application_1/screens/scroll_desing.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'Scroll_Screen',
        routes: {
          'basic_desing': (_) => const BasicDesingScreen(),
          'Scroll_Screen': (_) => const ScrollScreen(),
        });
  }
}
