import 'package:como_voce_star_hoje/classes/app_images.dart';
import 'package:flutter/material.dart';

class Tres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Baby Yoda"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Baby Yoda"),
            Image.asset(AppImages.tres),
            Text("Fofo"),
          ],
        ),
      ),
    );
  }
}
