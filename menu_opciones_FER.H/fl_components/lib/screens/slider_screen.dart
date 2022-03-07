import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class sliderScreen extends StatefulWidget {
  const sliderScreen({Key? key}) : super(key: key);

  @override
  State<sliderScreen> createState() => _sliderScreenState();
}

class _sliderScreenState extends State<sliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slide & Checks'),
      ),
      body: Column(
        children: [
          //adaptative: para que se adapte dependiendo el S.O
          Slider.adaptive(
              min: 50,
              max: 400,
              activeColor: AppTheme.primary,
              //divisions: 10,
              value: _sliderValue,
              onChanged: _sliderEnabled
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null),
          /*  Checkbox(
              value: _sliderEnabled,
              onChanged: (value) {
                _sliderEnabled = value ?? true;
                setState(() {});
              }), */
/*           CheckboxListTile(
            title: const Text('Habilitar Slider'),
            activeColor: AppTheme.primary,
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
              _sliderEnabled = value ?? true;
            }),
          ), */
/* 
          Switch(
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
              _sliderEnabled = value;
            }), 
          ),*/

          SwitchListTile.adaptive(
            title: const Text('Habilitar Slider'),
            activeColor: AppTheme.primary,
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
              _sliderEnabled = value;
            }),
          ),
          //AboutListTile(): para ver todas las licencias que estas usando
          const AboutListTile(),
          Expanded(
            //expanded: para que el single tome todo el espacio posible
            child: SingleChildScrollView(
              child: Image(
                image: const AssetImage('assets/img2.jpg'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
