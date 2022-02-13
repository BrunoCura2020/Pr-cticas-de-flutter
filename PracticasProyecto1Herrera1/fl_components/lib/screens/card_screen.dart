import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const <Widget>[
          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'assets/img1.jfif', name: 'Lindo dia'),
          SizedBox(height: 20),
          CustomCardType2(
              imageUrl: 'assets/img1.jfif', name: 'Que hermoso dia'),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'assets/img1.jfif'),
        ],
      ),
    );
  }
}
