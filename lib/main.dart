import 'package:flutter/material.dart';

import './product_manager.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<String> _products = ['Food Tester'];
  @override
  Widget build(Buildontext) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(title: Text('EasyList')),
        body: SingleChildScrollView(
            child: ProductManager(startingProduct: 'Food tester')),
      ),
    );
  }
}
