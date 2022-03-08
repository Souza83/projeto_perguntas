import 'package:flutter/material.dart';
import 'questao.dart';
import './resposta.dart';

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
      {
        'texto': 'Qual sua cor favorita?',
        'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
      },
      {
        'texto': 'Qual sua cor favorita?',
        'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
      },
      {
        'texto': 'Qual sua cor favorita?',
        'respostas': ['Maria', 'João', 'Leo', 'Pedro'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        //Inicia a estrutura da aplicação
        appBar: AppBar(
          title: Center(child: Text('Perguntas')),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
            Resposta('Resposta 1', _responder),
            Resposta('Resposta 2', _responder),
            Resposta('Resposta 3', _responder),
          ], // children
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
