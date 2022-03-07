import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/providers/heroes_info.dart';
import 'package:flutter_application_1/src/providers/villanos_info.dart';
import 'package:provider/provider.dart';

class SuperText extends StatelessWidget {
  const SuperText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //-------------OPCIÓN 1--------------------------------
    final heroeInfo = Provider.of<HeroesInfo>(context);
    final villanoInfo = Provider.of<VillanosInfo>(context);
    //-----------------------------------------------------
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        //---------------------OPCIÓN 2(USANDO CONSUMER)------------------------
        //Consumer<HeroesInfo>(
        //builder(constructor): estamos consrtuyendo alg     o
        //builder: (context, heroeInfo, _) => Text(heroeInfo.heroe, style: TextStyle(color: heroeInfo.colorBase)),),
        //----------------------------------------------------------------------
        Text(
          heroeInfo.heroe,
          style: TextStyle(color: heroeInfo.colorBase),
        ),

        Text(
          villanoInfo.villano,
        ),
      ],
    );
  }
}
