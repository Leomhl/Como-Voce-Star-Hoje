import 'package:como_voce_star_hoje/screens/1.dart';
import 'package:como_voce_star_hoje/screens/2.dart';
import 'package:como_voce_star_hoje/screens/3.dart';
import 'package:como_voce_star_hoje/screens/4.dart';
import 'package:como_voce_star_hoje/screens/5.dart';
import 'package:como_voce_star_hoje/screens/6.dart';
import 'package:como_voce_star_hoje/screens/7.dart';
import 'package:como_voce_star_hoje/screens/8.dart';
import 'package:como_voce_star_hoje/screens/9.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'classes/app_images.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StarToday',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(title: 'StarToday'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map> items = [
    {'img': AppImages.um, 'screen': Um()},
    {'img': AppImages.dois, 'screen': Dois()},
    {'img': AppImages.tres, 'screen': Tres()},
    {'img': AppImages.quatro, 'screen': Quatro()},
    {'img': AppImages.cinco, 'screen': Cinco()},
    {'img': AppImages.seis, 'screen': Seis()},
    {'img': AppImages.sete, 'screen': Sete()},
    {'img': AppImages.oito, 'screen': Oito()},
    {'img': AppImages.nove, 'screen': Nove()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  bottom: 25
                ),
                child: Text(
                  'De 1 até 9, como você se sente hoje?',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700]
                  )
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  children: _generateItems(items, context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> _generateItems(List<Map> items, BuildContext context) {
  List<Widget> list = [];
  int counter = 0;

  items.forEach((item) {

    counter++;

    list.add(
      InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => item['screen'])
          );
        },
        child: Padding(
          padding: EdgeInsets.all(2),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Image.asset(
                item['img'],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    '$counter',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              )
            ]
          ),
        ),
      ),
    );
  });

  return list;
}
