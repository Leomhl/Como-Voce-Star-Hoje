import 'package:flutter/material.dart';

class Tela extends StatelessWidget {
  final String titulo;
  final String imagem;
  final String mensagem;

  Tela({@required this.titulo, this.imagem, this.mensagem});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(titulo),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(imagem),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    mensagem,
                    textAlign: TextAlign.center,
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
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    mensagem,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Tentar de Novo'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow,
                    onPrimary: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
