import 'package:flutter/material.dart';
import './products_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            brightness: Brightness.light,
            accentColor: Colors.deepPurple,
            primarySwatch: Colors.green),
        home: Scaffold(
          appBar: AppBar(
            title: Text('EasyList'),
          ),
          body: ProductsManager(
            startingProduct: "FoodTester",
          ),
        ));
  }
}
