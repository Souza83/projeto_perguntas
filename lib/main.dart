//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*Pode ser implementado da forma abaixo ou a seguir
main() {
  runApp(PerguntaApp());
}*/
main() => runApp(PerguntaApp());

//Cria classe (extends: demonstra que há herança)
class PerguntaApp extends StatelessWidget {
  void responder(){
    print('Pergunta respondida.')
  }
  @override //Decorador que demonstra ao StatelessWidget é obrigado implementar
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual sua cor favorita?',
      'Qual seu animal favorito?',
    ];
    return MaterialApp(
      home: Scaffold(
        //Inicia a estrutura da aplicação
        appBar: AppBar(
          title: Center(child: Text('Perguntas')),
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: responder,
            ),
          ],
        ),
      ),
    );
  }
}
