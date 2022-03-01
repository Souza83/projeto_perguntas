//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*Pode ser implementado da forma abaixo ou a seguir
main() {
  runApp(PerguntaApp());
}*/
main() => runApp(PerguntaApp());

//Cria classe (extends: demonstra que há herança)
class PerguntaApp extends StatelessWidget {
  @override //Decorador que demonstra ao StatelessWidget é obrigado implementar
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //Inicia a estrutura da aplicação
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Text('Olá Flutter!!!'),
      ),
    );
  }
}
