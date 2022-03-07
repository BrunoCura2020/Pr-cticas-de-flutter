import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAppCount(),
    );
  }
}

class MyAppCount extends StatefulWidget {
  @override
  _MyAppCountState createState() => _MyAppCountState();
}

class _MyAppCountState extends State<MyAppCount> {
  @override
  int contador = 0;
  Widget build(BuildContext Context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Contador'),
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: (Text(
            contador.toString(),
            style: TextStyle(color: Colors.white, fontSize: 30),
          )),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: (Icon(Icons.plus_one)),
        onPressed: () {
          setState(() {
            agregar();
          });
        },
      ),
    );
  }

  agregar() {
    return contador++;
  }
}
