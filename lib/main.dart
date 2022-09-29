import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "App",
      home: PaginaVendas(),
    ),
  );
}

class PrimeiroApp extends StatefulWidget {
  const PrimeiroApp({Key? key}) : super(key: key);

  @override
  State<PrimeiroApp> createState() => _PrimeiroAppState();
}

class _PrimeiroAppState extends State<PrimeiroApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu App Novo"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.account_circle),
                      hintText: "Digite o seu login",
                      labelText: "Seu Login")),
              TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.password),
                    hintText: "Digite a sua senha",
                    labelText: "Senha"),
                obscureText: true,
              ),
              Container(
                  padding: const EdgeInsets.all(15.0),
                  width: 110,
                  height: 60,
                  child: ElevatedButton(onPressed: () {}, child: Text("Logar")))
            ],
          )),
    );
  }
}

class PaginaVendas extends StatefulWidget {
  const PaginaVendas({Key? key}) : super(key: key);

  @override
  State<PaginaVendas> createState() => _PaginaVendasState();
}

class _PaginaVendasState extends State<PaginaVendas> {
  List<Jogos> jogos = [
    Jogos("Gta", 150.0, "lib/imagens/Gta5-Capa.png"),
    Jogos("PES", 250.0, "lib/imagens/Efootbol_22-Capa.png"),
    Jogos("God Of War", 250.0, "lib/imagens/God-of-war-Capa.jpg"),
    Jogos("Fifa", 250.0, "lib/imagens/Fifa22-Capa.png"),
    Jogos("Fortnite", 0.0, "lib/imagens/Fortnite-Capa.jpg"),
    Jogos("Call Of Dute", 170.0, "lib/imagens/Call-of-Duty-Capa.jpg"),
    Jogos("Red Dead Redemption", 300.0, "lib/imagens/Gta5-Capa.png"),
    Jogos("Spider-Man", 300.0, "lib/imagens/Spider-Man_capa.png")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {},
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: Text("Melhores Jogos"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: jogos.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Image.asset(jogos[index].imagem),
                title: Text(jogos[index].nome),
                subtitle: Text("R\$" + jogos[index].preco.toStringAsFixed(2)),
                trailing:
                    ElevatedButton(onPressed: () {}, child: Text("Comprar")),
              ),
            );
          },
        ));
  }
}

class Jogos {
  String nome = "";
  double preco = 0.0;
  String imagem = "";

  Jogos(String _jogo, double _preco, String _imagem) {
    nome = _jogo;
    preco = _preco;
    imagem = _imagem;
  }
}
