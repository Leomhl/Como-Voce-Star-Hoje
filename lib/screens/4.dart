import 'package:como_voce_star_hoje/classes/app_images.dart';
import 'package:flutter/material.dart';

class Quatro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Luke"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Luke"),
            Image.asset(AppImages.quatro),
            Text("Carregando o time nas costas"),
          ],
        ),
      ),
    );
  }
}
