/*import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(home: PaginaInicial()));
}
class PaginaInicial extends StatefulWidget {
  PaginaInicialState createState() {
    return PaginaInicialState();
  }
}
class PaginaInicialState extends State<PaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Página Inicial")
      ),
    );
  }
}
*/


//Atividade 1
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

/*---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

class Home extends StatefulWidget {
  @override
  HomeState createState(){ 
   return HomeState();
  }
}

/*---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

class HomeState extends State<Home> {
  int numeroVezes = 0;
  String mensagem = "Número de vezes em que o botão foi pressionado: 0.\nEsse número é par";

  void cliqueDoBotao() {
    numeroVezes = numeroVezes + 1;
    //mensagem = "Número de vezes em que o botão foi pressionado: $numeroVezes.\nEsse número é ${numeroVezes % 2 == 0 ? "par" : "ímpar"}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página Inicial"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Número de vezes em que o botão foi pressionado: $numeroVezes.\nEsse número é ${numeroVezes % 2 == 0 ? "par" : "ímpar"}")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(cliqueDoBotao);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}



/*
Atividade 2
Durante o vídeo foi mostrado algumas funções do flutter e da linguagem dart, mostrou-se a classe statelassWidget, StateFull, floatingActionButton, mostrou-se o número mudar dentro da página criada dentro da aplicação, o Guilherme falou da documentação do flutter, mostrou a página da documentação no google. Falaram do runApp, MyApp, extends e algumas outras funções dentro do flutter.
*