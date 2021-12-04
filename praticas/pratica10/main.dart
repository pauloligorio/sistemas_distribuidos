import 'package:flutter/material.dart';
import 'package:pratica10a/imc.dart';
import 'package:pratica10a/pratica10.dart';
import 'package:pratica10a/volume.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Pratica10(),
        routes: <String, WidgetBuilder>{
        '/Imc' :  (BuildContext context) => new Imc(),
        '/Volume':(BuildContext context) => new Volume(),
        }
    );
  }
}

