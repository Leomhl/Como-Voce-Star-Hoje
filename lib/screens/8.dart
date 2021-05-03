import 'package:como_voce_star_hoje/classes/app_images.dart';
import 'package:flutter/material.dart';

class Oito extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text("Darth Vader"),
            Image.asset(AppImages.oito),
            Text("A ponto de estrangular alguém"),
          ],
        ),
      ),
    );
  }
}
