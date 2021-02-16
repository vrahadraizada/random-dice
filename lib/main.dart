import 'package:flutter/material.dart';
import 'dice_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Random Dice'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    );
  }
}
