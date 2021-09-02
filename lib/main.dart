import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyekbartol/menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Proyek Akhir',
      theme: ThemeData.dark(),
      home: MainMenu(),
    );
  }
}