import 'package:como_voce_star_hoje/classes/app_images.dart';
import 'package:flutter/material.dart';

class Cinco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text("Princesa Leia"),
            Image.asset(AppImages.cinco),
            Text("Bela e pronta pra atirar no primeiro que discordar"),
          ],
        ),
      ),
    );
  }
}
