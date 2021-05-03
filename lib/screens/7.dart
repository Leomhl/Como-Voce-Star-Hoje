import 'package:como_voce_star_hoje/classes/app_images.dart';
import 'package:flutter/material.dart';

class Sete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text("Anakin na Lava"),
            Image.asset(AppImages.sete),
            Text("Você está pegando fogo hoje!"),
          ],
        ),
      ),
    );
  }
}
