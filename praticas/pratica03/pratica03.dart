import 'package:flutter/material.dart';

void main() {
  String nome = "Ana";
  String dia = 'Quinta-Feira';
  
  runApp(
    Center(
      
      child: RichText(
        textDirection: TextDirection.ltr,
        text: TextSpan(
          text: "Olá, ",
          style: TextStyle(
            color: Colors.green,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.white,
          ), 
          children: <TextSpan>[
            TextSpan(
              text: '$nome',
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
                backgroundColor: Colors.lightGreen,
                decorationStyle: TextDecorationStyle.double,
              ),
            ),
            TextSpan(
              text: '! \nHoje é' +' $dia!' ,
              style: TextStyle(
                backgroundColor: Colors.yellowAccent,
                color: Colors.red,
                )
            ),
            TextSpan(
              text: '! \nBom dia!',
            ),
            TextSpan(
              text: '\nHoje, você terá que escrever um aplicativo em Flutter. O aplicativo deve imprimir um texto na tela. O texto possui trechos com estilos diferentes!',
              style: TextStyle(
                color: Colors.redAccent,
              )
            ),
            TextSpan(
              text: '\n Boa pratica!\n =DH',
              style: TextStyle(
                color: Colors.purple)
            ),
          ],
        ),
      ),
    ),
  );
}
