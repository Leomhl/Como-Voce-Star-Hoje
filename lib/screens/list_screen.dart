import 'package:como_voce_star_hoje/classes/app_images.dart';
import 'package:como_voce_star_hoje/screens/telas.dart';
import 'package:flutter/material.dart';

import '1.dart';

class ListScreen extends StatelessWidget {
  List items = [
    {
      'titulo': 'Anakin',
      'imagem': AppImages.um,
      'mensagem': 'Você está pegando fogo hoje!'
    },
    {
      'titulo': 'Han Solo',
      'imagem': AppImages.dois,
      'mensagem': 'Malandro'
    },
    {
      'titulo': 'Baby Yoda',
      'imagem': AppImages.tres,
      'mensagem': 'Fofo'
    },
    {
      'titulo': 'Luke',
      'imagem': AppImages.quatro,
      'mensagem': 'Carregando o time nas costas'
    },
    {
      'titulo': 'Princesa Leia',
      'imagem': AppImages.cinco,
      'mensagem': 'Bela e Pronta para atirar no primeiro que discordar'
    },
    {
      'titulo': 'StormTrooper',
      'imagem': AppImages.seis,
      'mensagem': 'Não sabendo que era impossível errar, foi lá e errou'
    },
    {
      'titulo': 'C3PO e R2D2',
      'imagem': AppImages.sete,
      'mensagem': 'Uma máquina de produtividade'
    },
    {
      'titulo': 'Darth Vader',
      'imagem': AppImages.oito,
      'mensagem': 'A ponto de estrangular alguém'
    },
    {
      'titulo': 'Palpatine',
      'imagem': AppImages.nove,
      'mensagem': 'Destruído por fora mas feliz por dentro'
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("StarToday"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 25),
                child: Text('De 1 até 9, como você se sente hoje?',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700])),
              ),
              Align(
                alignment: Alignment.center,
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  children: _generateItems(items, context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> _generateItems(List items, BuildContext context) {
  List<Widget> list = [];
  int counter = 0;

  items.forEach((item) {
    counter++;
    list.add(
      InkWell(
        onTap: () {
          // TODO alterar aqui o esquema da passagem de tela com parâmetros
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Tela(
                titulo: item['titulo'],
                imagem: item['imagem'],
                mensagem: item['mensagem'],
              ),
            ),
          );
        },
        child: Padding(
          padding: EdgeInsets.all(2),
          child: Stack(alignment: Alignment.bottomRight, children: [
            Image.asset(item['imagem']),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  '$counter',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Colors.black,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  '$counter',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  });

  return list;
}
