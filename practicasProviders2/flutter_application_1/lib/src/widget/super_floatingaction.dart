import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/providers/heroes_info.dart';
import 'package:flutter_application_1/src/providers/villanos_info.dart';
import 'package:provider/provider.dart';

class SuperFloatingAction extends StatelessWidget {
  const SuperFloatingAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heroesInfo = Provider.of<HeroesInfo>(context);
    final villanoInfo = Provider.of<VillanosInfo>(context);
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          child: const Icon(Icons.access_time),
          backgroundColor: Colors.red,
          onPressed: () {
            heroesInfo.heroe = 'IronMan';
            villanoInfo.villano = 'Mandarin';
          },
        ),
        const SizedBox(height: 10.0),
        FloatingActionButton(
            child: const Icon(Icons.add),
            backgroundColor: Colors.blue,
            onPressed: () {
              heroesInfo.heroe = 'Capitan America';
              villanoInfo.villano = 'Red Skull';
            }),
      ],
    );
  }
}
