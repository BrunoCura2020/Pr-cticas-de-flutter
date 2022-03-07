// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';

class BasicDesingScreen extends StatelessWidget {
  const BasicDesingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          //Imagen
          const Image(image: AssetImage('assets/foto2.jfif')),
          //Titulo
          const Tile(),
          //Botones
          const ButtonSection(),
          //descripcion
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text(
                'Laborum laboris cillum quis dolor do excepteur. Dolor cupidatat et amet ex. Laborum sint magna tempor consequat reprehenderit magna pariatur id incididunt do anim. Irure mollit nisi mollit labore duis fugiat culpa occaecat. Sunt deserunt qui id est culpa ea reprehenderit aliquip magna pariatur deserunt consectetur.'),
          ),
        ],
      ),
    );
  }
}

class Tile extends StatelessWidget {
  const Tile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Oeshipnen Lake Campground',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Kanderstag, Switzarland',
                  style: TextStyle(color: Colors.black45)),
            ],
          ),
          Expanded(
            child: Container(),
          ),
          const Icon(Icons.star, color: Colors.red),
          const Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(icon: Icons.call, text: 'Call'),
          CustomButton(icon: Icons.map_sharp, text: 'Route'),
          CustomButton(icon: Icons.share, text: 'Share'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(this.icon, color: Colors.blue),
        Text(this.text, style: const TextStyle(color: Colors.blue)),
      ],
    );
  }
}
