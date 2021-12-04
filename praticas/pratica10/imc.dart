import 'package:flutter/material.dart';

class Imc extends StatefulWidget {
  const Imc({Key? key}) : super(key: key);

  @override
  _ImcState createState() => _ImcState();
}

class _ImcState extends State<Imc> {
  TextEditingController num01Controller = TextEditingController();
  TextEditingController num02Controller = TextEditingController();
  String resp = '';
  double resultado = 0;
  String resultImc= "";
  String resultFinal ="";

  imcCalc() {
    double num01 = double.parse(this.num01Controller.text);
    double num02 = double.parse(this.num02Controller.text);
    resultado = num02 / (num01 * num01);
    this.resp = ' $num02 / ($num01 * $num01) =' + resultado.toStringAsFixed(2);
    
    if(resultado < 16){
      resultImc =" \nMagreza Grave";
    }
    else if(resultado >=16 && resultado <17){ 
      resultImc="\nMagreza moderada";
    }
    else if(resultado >=17 && resultado <18.5){ 
      resultImc="\nMagreza Leve";
    }
    else if(resultado >=18.5 && resultado <25){ 
      resultImc="\nSaudável";
    }
    else if(resultado >=25 && resultado <30){ 
      resultImc="\nSobrepeso";
    }
    else if(resultado >=30 && resultado <35){ 
      resultImc="\nObesidade Grau I";
    }
    else if(resultado >=35 && resultado <40){ 
      resultImc="\nObesidade Grau II(Severa";
    }
    else if(resultado>=40){ 
      resultImc="\nObesidade Grau III(mórbida)";
    }
    resultFinal = this.resp +  resultImc;
    
  }
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calcular IMC",
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: num01Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num01Controller.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe a altura',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: num02Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num02Controller.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe o peso',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  print(imcCalc());
                  setState(imcCalc);
                },
                child: Text(
                  'Calcular IMC',
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
                fontSize: 20, color: Colors.green, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
