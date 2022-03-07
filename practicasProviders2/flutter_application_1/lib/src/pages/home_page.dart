import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/providers/heroes_info.dart';
import 'package:flutter_application_1/src/widget/super_floatingaction.dart';
import 'package:flutter_application_1/src/widget/super_text.dart';
import 'package:provider/provider.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heroesInfo = Provider.of<HeroesInfo>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(heroesInfo.heroe),
      ),
      body: const Center(
        child: SuperText(),
      ),
      floatingActionButton: const SuperFloatingAction(),
      backgroundColor: heroesInfo.colorBase,
    );
  }
}
