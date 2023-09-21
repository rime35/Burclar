import 'package:flutter/material.dart';
import 'package:flutter_burclar_uygulamsi_v1/data/burcListesi.dart';
import 'burc_item.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: BurcListesi(),
    );
  }
}
