import 'package:como_voce_star_hoje/classes/app_images.dart';
import 'package:flutter/material.dart';

class Um extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Um"),),
      body: Center(
        child: Column(
          children: [
            Text("Anakin na Lava"),
            Image.asset(AppImages.um),
            Text("Você está pegando fogo hoje!"),
          ],
        ),
      ),
    );
  }
}
