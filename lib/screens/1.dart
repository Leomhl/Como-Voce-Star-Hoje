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
            Image.network("https://i.redd.it/h2vj5cpoghe11.jpg"),
            Text("Você está pegadno fogo hoje!"),
          ],
        ),
      ),
    );
  }
}
