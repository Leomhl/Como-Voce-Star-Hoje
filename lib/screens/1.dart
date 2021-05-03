import 'package:como_voce_star_hoje/classes/app_images.dart';
import 'package:flutter/material.dart';

class Um extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anakin"),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset(AppImages.um),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      'Você está pegando fogo hoje!',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              blurRadius: 1,
                              color: Colors.black,
                              offset: Offset(1,1),
                            ),
                          ]
                      ),
                    ),
                  ),
                ],
              )
            ),


          ],
        ),
      ),
    );
  }
}
