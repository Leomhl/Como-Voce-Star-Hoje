import 'package:como_voce_star_hoje/classes/app_images.dart';
import 'package:flutter/material.dart';

class Sete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("C3PO e R2D2"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text("C3PO e R2D2"),
            Image.asset(AppImages.sete),
            Text("Uma máquina"),
          ],
        ),
      ),
    );
  }
}
