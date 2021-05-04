import 'package:como_voce_star_hoje/classes/app_images.dart';
import 'package:flutter/material.dart';

import '1.dart';

class ListScreen extends StatelessWidget {

  List items = [
    AppImages.um,
    AppImages.dois,
    AppImages.tres,
    AppImages.quatro,
    AppImages.cinco,
    AppImages.seis,
    AppImages.sete,
    AppImages.oito,
    AppImages.nove,
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
                padding: const EdgeInsets.only(
                    top: 15,
                    bottom: 25
                ),
                child: Text(
                    'De 1 até 9, como você se sente hoje?',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700]
                    )
                ),
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

  items.forEach((image) {
    counter++;
    list.add(
      InkWell(
        onTap: () {

          // TODO alterar aqui o esquema da passagem de tela com parâmetros
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Um())
          );
        },
        child: Padding(
          padding: EdgeInsets.all(2),
          child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Image.asset(image),
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
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                )
              ]
          ),
        ),
      ),
    );
  });

  return list;
}
