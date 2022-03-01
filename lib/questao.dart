import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  //const Questao({ Key? key }) : super(key: key);

  final String texto;

  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Text(texto);
  }
}
