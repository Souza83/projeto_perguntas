//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*Pode ser implementado da forma abaixo ou a seguir
main() {
  runApp(PerguntaApp());
}*/
main() => runApp(PerguntaApp());

//Cria classe (extends: demonstra que há herança)
class PerguntaApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('Olá Flutteiros!'),
    );
  }
}
