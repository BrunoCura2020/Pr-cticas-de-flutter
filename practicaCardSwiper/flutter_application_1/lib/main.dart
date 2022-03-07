import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practicando Card Swipper',
      home: MyHomePage('Card Swiper'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage(this.title, {Key? key}) : super(key: key);
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Swiper(
        itemBuilder: (_, int index) {
          return Image.network('https://picsum.photos/id/$index/410/300');
        },
        itemCount: 10,
        //paginacion: muestra los puntos de cada pagina
        pagination: const SwiperPagination(),
        //autoplay: para que cambie de forma automatica
        autoplay: true,
        //control: para que muestre las flechas dentro de las imagenes
        control: const SwiperControl(
          size: 40,
        ),
        //Da otro tipo de diseño
        itemWidth: 300.0,
        itemHeight: 400.0,
        layout: SwiperLayout.TINDER,

/*      itemWidth: 300.0,
        layout: SwiperLayout.STACK, */
      ),
    );
  }
}
