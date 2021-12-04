import 'package:flutter/material.dart';

void main() => runApp(MeuAplicativo());

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrimeiraRota(),
    );
  }
}

class PrimeiraRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira Rota'),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.amber,
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                  accountName: Text("Ana"),
                  accountEmail: Text("ana@ana.com.br"),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text(
                      "A",
                      style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.red,
                      ),
                    ),
                  )),
              ListTile(
                leading: Icon(Icons.video_collection),
                title: Text("Rota 02"),
                subtitle: Text("Siga para a Rota 02."),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  print('Ir para a Rota 02.');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          RotaGenerica('Segunda Rota', Colors.blue[900]),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.analytics),
                title: Text("Rota 03"),
                subtitle: Text("Siga para a Rota 03"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  print('Ir para a Rota 03.');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          RotaGenerica('Terceira Rota', Colors.purple[900]),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Rota 01"),
                subtitle: Text("Voltar para a Rota 01"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  print('Voltar para a Rota 01.');
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: const Text('Corpo'),
      ),
    );
  }
}

class RotaGenerica extends StatelessWidget {
  final String titulo;
  final Color? cor;
  RotaGenerica(this.titulo, this.cor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${this.titulo}'),
      ),
      body: Container(
        color: this.cor,
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(80),
                child: Text(
                  '${this.titulo}',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Text('Voltar para a primeira rota'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}