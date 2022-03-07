import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? emailAddress;
  final bool obscureText;

  final String formProperty;
  final Map<String, dynamic> formValues;

  const CustomInputField(
      {Key? key,
      this.hintText,
      this.labelText,
      this.helperText,
      this.icon,
      this.suffixIcon,
      this.emailAddress,
      this.obscureText = false,
      required this.formProperty,
      required this.formValues})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //autofocus: es para que ni bien entre en la pantalla del formulario se habra el teclado en el primer input
      autofocus: false,
      initialValue: '',
      //textCapitalization: vuelve mayusculas las palabras de forma automatica/words: palabras
      textCapitalization: TextCapitalization.words,
      //Modifica teclado
      keyboardType: emailAddress,
      //obscureText: oculta las palabras
      obscureText: obscureText,
      //onChanged: me ejecuta en la consola todo lo que escriba en el input
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value) {
        if (value == null) return 'Este campo es requeriodo';
        return value.length < 3 ? 'Minimo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        //hintText: es darle un texto al input, éste cuando se comienza a escribir en el input desaparece
        hintText: hintText,
        //labelText: es darle un texto al input, cuando hagamos click al input, ese texto se dirije a la parte superior
        labelText: labelText,
        helperText: helperText,
        //prefixIcon: es un icon que va a la izquierda, adentro del input
        //prefixIcon: Icon(Icons.verified_outlined),
        //counterText/contratexto: podes darle una instruccion de como tiene que ser los caracter que van a escribir en el input
        counterText: '3 caracteres',
        //suffixIcon: es un icon que va a la derecha, adentro del input
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        //Es un icono afuera del input en el lado izquierdo
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}
