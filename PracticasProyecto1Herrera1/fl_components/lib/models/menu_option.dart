import 'package:flutter/material.dart' show IconData, Widget;
//show es para importa unicamente IconData

class MenuOption {
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  //uso llaves para que no importe el orden
  MenuOption({
    required this.route,
    required this.icon,
    required this.name,
    required this.screen,
  });
}
