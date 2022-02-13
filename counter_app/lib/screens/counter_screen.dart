import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  //Super: llama al constructor del widget stateless
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  //cuando esta afuera del build, es una propiedad, si esta adentro, es una variable
  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //creamos una variable que contenga el estilo
    const fontSize30 = TextStyle(fontSize: 30);
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('CounterScreen'),
        ),
        //elevation: sombreado;
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: alinea los hijos de forma relativa al widget más grande
          crossAxisAlignment: CrossAxisAlignment.center,
          //<Widget>: es un generico eso quiere decir que todo lo que esta adentro tiene que ser un generico
          children: <Widget>[
            const Text(
              'Número de click',
              style: fontSize30,
            ),
            Text('$counter', style: fontSize30),
          ],
        ),
      ),
      //floatingActionButtonLocation: posicionar mi botón
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset,
      ),
    );
  }
}

//clase independiente
class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.plus_one),
          onPressed: () => increaseFn(),
          //setState: notifica los cambios y redibuja/refrescamiento de la pantalla
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_zero),
          //setState: notifica los cambios y redibuja/refrescamiento de la pantalla
          onPressed: () => resetFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed: () => decreaseFn(),
          //setState: notifica los cambios y redibuja/refrescamiento de la pantalla
        ),
      ],
    );
  }
}
