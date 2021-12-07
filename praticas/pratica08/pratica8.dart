//Atividade 1 e 2
/*
import 'package:flutter/material.dart';
void main() {
  runApp(
    MaterialApp(
      home: PaginaInicial(),
      debugShowCheckedModeBanner: true,
    ),
  );
}
class PaginaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text("Primeira Página"),
      ),
      body: Center(
        child: Container(
          child: Text(
            "Olá, Mundo!!!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              //decoration: TextDecoration.underline,
              //decorationColor: Colors.red,
              //decorationStyle: TextDecorationStyle.solid,
            ),
          ),
          decoration: BoxDecoration(shape: BoxShape.rectangle, color: Colors.green),
          //color: Colors.red[900],
          alignment: Alignment.center,
          width: 200,
          height: 100,
        ),
      ),
      backgroundColor: Colors.blue[900],
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Exemplo de botão',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    ); //Text("Olá, Mundo!!!");
  }
}
*/


//Atividade 3
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: PaginaInicial(),
      debugShowCheckedModeBanner: true,
    ),
  );
}

class PaginaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text("Primeira Página"),
      ),
      body: Center(
        child: Container(
          child: Image.network('https://media.giphy.com/media/pt0EKLDJmVvlS/giphy.gif'),
          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.green),
          //color: Colors.red[900],
          //margin: const EdgeInsets.all(150), //porque esse não sai correto??????
          padding: const EdgeInsets.all(90),
        ),
      ),
      backgroundColor: Colors.blue[900],
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Exemplo de botão',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    ); //Text("Olá, Mundo!!!");
  }
}