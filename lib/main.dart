//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*Pode ser implementado da forma abaixo ou a seguir
main() {
  runApp(PerguntaApp());
}*/
main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++; //operador unário de incremento
    });

    print(_perguntaSelecionada);
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
            Text(perguntas[_perguntaSelecionada]),
            ElevatedButton(
              child: Text('Resposta 01'),
              onPressed: _responder,
            ),
            ElevatedButton(
              child: Text('Resposta 02'),
              onPressed: _responder,
            ),
            ElevatedButton(
              child: Text('Resposta 03'),
              onPressed: _responder,
            ),
          ],
        ),
      ),
    );
  }
}

//Cria classe (extends: demonstra que há herança)
class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
