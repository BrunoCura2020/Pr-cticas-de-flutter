// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';

class HeroesInfo with ChangeNotifier {
  String _heroe = 'Capitan America';
  Color colorBase = Colors.blue;

  String get heroe {
    return _heroe;
  }

  set heroe(String nombre) {
    this._heroe = nombre;
    this.colorBase = (nombre == 'IronMan') ? Colors.red : Colors.blue;

    //notifyListeners(): hace escuchar a toda la app que algo se esta modificando
    notifyListeners();
  }
}
