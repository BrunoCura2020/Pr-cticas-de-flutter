// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';

class VillanosInfo with ChangeNotifier {
  String _villano = 'Red Skull';

  String get villano {
    return _villano;
  }

  set villano(String nombre) {
    this._villano = nombre;

    //notifyListeners(): hace escuchar a toda la app que algo se esta modificando
    notifyListeners();
  }
}
