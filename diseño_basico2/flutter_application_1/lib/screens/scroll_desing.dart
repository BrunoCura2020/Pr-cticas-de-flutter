import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        //physics: Para lograr un scroll tipo IOS.
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: const [
          Page1(),
          Page2(),
        ],
      ),
    );
  }
}

//Widget para el fondo
class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(
        image: AssetImage('assets/scroll-1.png'),
      ),
    );
  }
}

//Widget para el contenido
class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    final TextStyle textStyle = TextStyle(
        fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);
    //SafeArea: lo utilizamos para que nuestra app sea adaptable en cualquier dispositivo; ya que, En el interior utiliza el MediaQuery para saber que medidas tendrá la pantalla
    return SafeArea(
      //Le aclaramos que el SafeArea no se utilizará en la parte inferior.
      bottom: false,
      child: Column(
        //La posicion de los textos e Icon
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          Text('11°', style: textStyle),
          Text('Miércoles', style: textStyle),
          Expanded(child: Container()),
          const Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white)
        ],
      ),
    );
  }
}

//Pagina1, llama a los widgets anteriores
class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Background(),
        MainContent(),
      ],
    );
  }
}

//Pagina2, muestra la segunda pagina cuando se hace scroll en la primera
class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Binvenido',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xff0098FA),
            //shape: para darle el borde
            shape: const StadiumBorder(),
          ),
        ),
      ),
    );
  }
}
