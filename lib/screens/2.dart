import 'package:como_voce_star_hoje/classes/app_images.dart';
import 'package:flutter/material.dart';

class Dois extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Han Solo"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Han Solo"),
            Image.asset(AppImages.dois),
            Text("Malandro"),
          ],
        ),
      ),
    );
  }
}
