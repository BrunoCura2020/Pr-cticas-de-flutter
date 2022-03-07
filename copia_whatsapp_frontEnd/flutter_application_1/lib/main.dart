// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Pantalla1(),
    );
  }
}

class Pantalla1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.messenger),
          backgroundColor: Colors.teal[400],
          onPressed: () {},
        ),
        appBar: AppBar(
          backgroundColor: Colors.teal[900],
          title: Text('WhatsApp Business'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            PopupMenuButton(
              icon: Icon(Icons.more_horiz),
              itemBuilder: (context) => [
                // ignore: prefer_const_constructors
                PopupMenuItem(
                  value: 1,
                  child: Text('Herramientas para la empresa'),
                ),

                // ignore: prefer_const_constructors
                PopupMenuItem(
                  value: 1,
                  child: Text('Nuevo grupo'),
                ),

                // ignore: prefer_const_constructors
                PopupMenuItem(
                  value: 1,
                  child: Text('Nueva difusión'),
                ),

                // ignore: prefer_const_constructors
                PopupMenuItem(
                  value: 1,
                  child: Text('Etiquetas'),
                ),

                // ignore: prefer_const_constructors
                PopupMenuItem(
                  value: 1,
                  child: Text('Dispositivos vinculados'),
                ),

                // ignore: prefer_const_constructors
                PopupMenuItem(
                  value: 1,
                  child: Text('Mensajes destacados'),
                ),

                // ignore: prefer_const_constructors
                PopupMenuItem(
                  value: 1,
                  child: Text('Ajustes'),
                ),
              ],
            ),
          ],
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.camera_alt_rounded),
              ),
              Tab(
                text: 'CHATS',
              ),
              Tab(
                text: 'ESTADOS',
              ),
              Tab(
                text: 'LLAMADAS',
              ),
            ],
          ),
        ),
        body: TabBarView(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Center(child: Text('Camara')),
            //SingleChildScrollView: para que este fuera de rango la lista
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      IconButton(
                        alignment: Alignment.topLeft,
                        iconSize: 40,
                        icon: Icon(Icons.person),
                        onPressed: () {},
                      ),
                      Text('Bruno Cura', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  // ignore: prefer_const_constructors
                  Divider(
                    color: Colors.black54,
                  ),
                  Row(
                    children: [
                      IconButton(
                        alignment: Alignment.topLeft,
                        iconSize: 40,
                        icon: const Icon(Icons.person),
                        onPressed: () {},
                      ),
                      const Text('Roberto Roma',
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  const Divider(
                    color: Colors.black54,
                  ),
                  Row(
                    children: [
                      IconButton(
                        alignment: Alignment.topLeft,
                        iconSize: 40,
                        icon: Icon(Icons.person),
                        onPressed: () {},
                      ),
                      Text('Juan Lopez', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  Divider(
                    color: Colors.black54,
                  ),
                  Row(
                    children: [
                      IconButton(
                        alignment: Alignment.topLeft,
                        iconSize: 40,
                        icon: Icon(Icons.person),
                        onPressed: () {},
                      ),
                      Text('Maria Santos', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  Divider(
                    color: Colors.black54,
                  ),
                  Row(
                    children: [
                      IconButton(
                        alignment: Alignment.topLeft,
                        iconSize: 40,
                        icon: Icon(Icons.person),
                        onPressed: () {},
                      ),
                      Text('Maira Risueño', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  Divider(
                    color: Colors.black54,
                  ),
                  Row(
                    children: [
                      IconButton(
                        alignment: Alignment.topLeft,
                        iconSize: 40,
                        icon: Icon(Icons.person),
                        onPressed: () {},
                      ),
                      Text('Ricardo Montaner', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  Divider(
                    color: Colors.black54,
                  ),
                  Row(
                    children: [
                      IconButton(
                        alignment: Alignment.topLeft,
                        iconSize: 40,
                        icon: Icon(Icons.person),
                        onPressed: () {},
                      ),
                      Text('Abel Pintos', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  Divider(
                    color: Colors.black54,
                  ),
                  Row(
                    children: [
                      IconButton(
                        alignment: Alignment.topLeft,
                        iconSize: 40,
                        icon: Icon(Icons.person),
                        onPressed: () {},
                      ),
                      Text('Paco Riva', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  Divider(
                    color: Colors.black54,
                  ),
                  Row(
                    children: [
                      IconButton(
                        alignment: Alignment.topLeft,
                        iconSize: 40,
                        icon: Icon(Icons.person),
                        onPressed: () {},
                      ),
                      Text('Ñoqui Montiel', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  Divider(
                    color: Colors.black54,
                  ),
                  Row(
                    children: [
                      IconButton(
                        alignment: Alignment.topLeft,
                        iconSize: 40,
                        icon: Icon(Icons.person),
                        onPressed: () {},
                      ),
                      Text('Riana Taba', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  Divider(
                    color: Colors.black54,
                  ),
                  Row(
                    children: [
                      IconButton(
                        alignment: Alignment.topLeft,
                        iconSize: 40,
                        icon: Icon(Icons.person),
                        onPressed: () {},
                      ),
                      Text('Jesus Lopez', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  Divider(
                    color: Colors.black54,
                  ),
                  Row(
                    children: [
                      IconButton(
                        alignment: Alignment.topLeft,
                        iconSize: 40,
                        icon: Icon(Icons.person),
                        onPressed: () {},
                      ),
                      Text('Juana Nara', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ],
              ),
            ),
            Center(child: Text('Estados')),
            Center(child: Text('Llamadas')),
          ],
        ),
      ),
    );
  }
}
