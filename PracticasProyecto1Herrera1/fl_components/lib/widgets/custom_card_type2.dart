import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? name;

  const CustomCardType2({Key? key, required this.imageUrl, this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      //La imagen se recortará dependiendo lo que le pasemos
      clipBehavior: Clip.antiAlias,
      //para hacer un redondeo en las images
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
            image: AssetImage(imageUrl),
            //assets/img1.jfif
            placeholder: const AssetImage('assets/spinner.gif'),
            //double.infinity: le estoy diciendo qye tome todo el ancho del contenedor, solamente servira si el widget es limitado
            width: double.infinity,
            height: 180,
            fit: BoxFit.cover,
            //Acelera el proceso de mostrar la imagen
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(name ?? 'No title'),
            ),
        ],
      ),
    );
  }
}
