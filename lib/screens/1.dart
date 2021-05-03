import 'package:como_voce_star_hoje/classes/app_images.dart';
import 'package:flutter/material.dart';

class Um extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 5),
              child: Text("Anakin na Lava"),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Image.asset(AppImages.um),
            ),

            Text("Você está pegando fogo hoje!"),
          ],
        ),
      ),
    );
  }
}
