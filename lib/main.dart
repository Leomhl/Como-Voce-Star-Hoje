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
        primarySwatch: Colors.blue,
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
    {'img': AppImages.um, 'screen': Dois()},
    {'img': AppImages.um, 'screen': Tres()},
    {'img': AppImages.um, 'screen': Quatro()},
    {'img': AppImages.um, 'screen': Cinco()},
    {'img': AppImages.um, 'screen': Seis()},
    {'img': AppImages.um, 'screen': Sete()},
    {'img': AppImages.um, 'screen': Oito()},
    {'img': AppImages.um, 'screen': Nove()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Align(
          alignment: Alignment.center,
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            children: _generateItems(items, context),
          ),
        ),
      ),
    );
  }
}

List<Widget> _generateItems(List<Map> items, BuildContext context) {
  List<Widget> list = [];

  items.forEach((item) => list.add(
    GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => item['screen'])
        );
      },
      child: Padding(
        padding: EdgeInsets.all(2),
        child: Image.asset(
          item['img'],
          fit: BoxFit.cover,
        ),
      ),
    ),
  ));

  return list;
}
