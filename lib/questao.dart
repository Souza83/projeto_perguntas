import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  //const Questao({ Key? key }) : super(key: key);

  final String texto;

  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //Refere ao valor máximo (largura total da tela)
      margin: EdgeInsets.all(10),
      child: Text(
        texto,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
