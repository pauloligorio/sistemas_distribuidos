import 'package:flutter/material.dart';

class Volume extends StatefulWidget {
  const Volume({ Key? key }) : super(key: key);

  @override
  _VolumeState createState() => _VolumeState();
}

class _VolumeState extends State<Volume> {
  TextEditingController alturaController = TextEditingController();
  TextEditingController larguraController = TextEditingController();
  TextEditingController comprimentoController = TextEditingController();
  double resultado = 0;
  double comprimento = 0;
  double largura = 0;
  double altura = 0;
  String resultFinal = "";

  volumeCalc(){
    double comprimento = double.parse(this.comprimentoController.text);
    double largura = double.parse(this.larguraController.text);
    double altura = double.parse(this.alturaController.text);
    resultado = comprimento * largura * altura;
    this.resultFinal = 'O comprimento é $comprimento\nA largura é $largura\nA altura é $altura\nO resultado do volume dessas três medidas é  ' + resultado.toStringAsFixed(2) + "c³";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calcular Volume",
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: comprimentoController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed:() => comprimentoController.clear() ,
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe o comprimento',
                ),
              ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: larguraController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed:() => larguraController.clear() ,
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe a largura',
                ),
              ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: alturaController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed:() => alturaController.clear() ,
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe a altura',
                ),
              ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed:(){
                  print(volumeCalc());
                  setState(volumeCalc);
                },
                child: Text(
                  'Calcular Volume',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          Text(
            resultFinal,
            style: TextStyle(
              fontSize: 20,color: Colors.green, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}